# 美国 Local Set 枚举与强制修改可行性

2026-10-21。本轮只有离线分析及本机只读调用，没有修改 Local Set 或 Preventing Import。

## 核心发现

两版 TIFSDaemon 的 FCStringForFactoryKey::m_MapValueToLocalSet 映射中，都存在：

| 全局枚举 | 名称 |
| --- | --- |
| 0 | NONE |
| 1 | US |
| 2 | KOR |
| 65 | CHI_DTV |

本机 WW 存储映射中，US 的存储索引也是 1，CHI_DTV 的存储索引为 63。全局枚举与存储索引属于两套表示，不能一般性地视为相同。

此前“本机只有 NONE 和 CHI_DTV”准确指经过本机过滤后的有效菜单列表，不是固件缺少 US 枚举。localset-label-map.json 及 extract-localset-labels.py 保存了离线抽取结果；该脚本只用于核对映射，不能作为所有枚举的完整定义。

## 真正的菜单过滤因素：Preventing Import

发现 FCControl::CheckSkipLocalset 会读取工厂 UID 761 / 0x2F9。本机只读原生结果：

```text
factory_get_data(194): rc=1, value=65
factory_get_data(761): rc=1, value=13
```

factory_get_item_with_unique_id(761) 返回控制项编号 140202，标签为 **Preventing Import**。证据为 live-factory-type.txt 与 live-filter-property.txt。

反汇编在此工厂值为 13 时，对多数全局 Local Set 设置 skip，只保留 0、65、22 等特殊分支。22 不是本机 WW 实际枚举数组中的有效存储项，因此本机完整枚举最终仅显示 NONE 和 CHI_DTV。此处还存在 Smart Monitor 的 unused 检查，不能把所有过滤都归结为单一条件。

全球 1720.7 的 CheckSkipLocalset 同样读取 UID 761，并含相同的 13 分支；不能认为换成全球固件就会移除这一过滤规则。UID 761 的其他数值含义尚未建立完整映射，也没有把 0 宣称为已验证的“关闭”值。

## 美国 M8 实机值：仍未直接取得

已经确定的是通用固件枚举 US=1。尚未取得 LS32BM801UNXZA 实机的以下读数：

- factory_get_data(194) / factory_get_localset_enum 的结果；
- factory_get_data(761) / Preventing Import 的结果；
- 与其机型配置匹配的工厂原始存储。

下载的 T-PTMWWC.zip 是多地区公共固件，不是一台美国 M8 的 EEPROM 或工厂存储转储。不能用“存在 US=1”推导“美国 M8 一定出厂为 US=1”。NONE 或其他配置组合也不能仅靠推测确定。

公开检索尚未找到能直接验证上述读数的同型号原始证据；其他年份的智能显示器或酒店电视资料不能代替本机平台的确认。

## 是否存在强制写入路径

存在值得验证的低层入口：

```text
factory_set_data(uid, value)
  → FCStorageBaseCommon::SetFactoryUID(...)
  → 范围/存储类型处理
  → FCStoreTypeControl / 底层存储写入
```

静态看到的这条路径没有调用工厂界面级 CheckSkipLocalset，区别于 SetParameter 的控制项执行路径。但后续存储层是否在本机接受、所需权限及持久化行为，均未通过实际写入验证。已取得 root 不等于绕过全部 SMACK 或存储层校验。

仅作研究用的候选参数对是：

```text
目标候选：factory_set_data(194, 1)     // 通用枚举 US
原值恢复：factory_set_data(194, 63)    // 存储索引 63，读回全局枚举 65 / CHI_DTV
```

以上不是已测试的执行或恢复脚本。另一个方向是研究 Preventing Import 的受支持值，但当前没有美国 M8 的对应值，不能随意写 0 或改成其他型号的值。

低层写入即使成功，也可能只改了存储值，未执行完整的关联参数更新、国家初始化或功能配置同步。因此不能把“读回 US”直接等同于“完整美国 M8 状态”，更不能保证 OTA 后保持换区。

## 进入实际强写实验前缺少的工作

1. 补齐工厂原始存储备份与恢复验证；目前 fconfig-before.db 不包含工厂存储／EEPROM。
2. 确认 UID 194 对应的实际存储后端、地址或记录、校验与写入原子性。BOM Model 的 EEPROM 路径不能套用到 Local Set。
3. 保存 UID 761=13 及其他关联字段的原值；避免为显示 US 选项而改变未知工厂属性。
4. 为断连或界面不能正常启动的情况准备独立恢复入口，不能仅依赖 Apps 或当前 SDK 会话。
5. 若目标是复制美国型号出厂配置，先取得美国 M8 的实机字段证据。若只验证单字段强写，应明确其不同于复制美版状态。

本机当前美区商店已经通过 WAS 开关和 US 服务国家正常运行；本次没有以此为由进一步写入工厂字段。


## 实施前原生存储核对更正

2026-10-21 用户授权实际操作后，原生 NVRAM Read 取得有效 65536 字节备份，确认 Local Set 位于物理读取地址 0x3E23，存储字节为 63；Preventing Import 位于 0x3E65，字节为 13。普通 /dev/eeprom read 得到全 FF，已明确标为无效恢复来源。

重要：factory_get_data(194) 返回经过 ConvertStoreDataToControlData 的全局枚举 65；factory_set_data(194,...) 直接写入存储表示，因此恢复参数应为 **63**，不是此前未验证候选中的 65。实际操作前已修正 helper，从未执行错误的 65 写回。

有效原生备份位于 ../localset-trial/native-eeprom-before.bin；本机操作记录见 ../localset-trial/。备份包含设备工厂数据，仅保存在本机，不对外发布。


## 最新执行结果：2026-10-22

用户授权后，Local Set 已通过底层接口写为 US（全局枚举 1）；独立原生 NVRAM 比较仅 0x3E23 从 63 改为 1，Preventing Import 仍为 13。用户确认海外 Apps 正常。详细结果、有效原始备份及恢复表示值见 ../localset-trial/result.md。尚未重启或 OTA 验证。


## 后续实测：Preventing Import = 0

2026-10-22 用户授权测试后，Preventing Import 从 13 改为 0，Local Set 保持 US。地区列表从 2 项增至 31 项，用户确认 Apps 正常；原生 NVRAM 只改变 0x3E65 一个字节。测试值已保留并取消自动恢复。0 的解锁效果已实测，不代表已经取得美国 M8 原厂值。详见 ../import-trial/result.md。
