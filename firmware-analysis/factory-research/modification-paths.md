# M80B 工厂地区、型号和固件的修改入口核对

日期：2026-10-21。设备 LS32BM80BUCXXF，当前 1651.1，服务国家 US。本轮仅离线反汇编与设备端 getter/introspection，没有调用工厂 setter、写型号、刷机或更改新的地区配置。

## 结论

可定位写接口，不代表存在可用的“美国值”。本机工厂服务已实际返回 Local Set=CHI_DTV，完整遍历 0..76 列表索引仅 NONE 与 CHI_DTV 返回有效名称。现有证据不足以把本机工厂地区改为一个已验证的 USA Local Set。

## Local Set 的三种编号

| 含义 | 实际值 | 证据 |
| --- | --- | --- |
| 工厂唯一参数 UID | 194 / 0xC2 | factory_get_localset_enum、GetFactoryUniqueItem、SetParameter 反汇编 |
| 控制项／TPID | 401 | factory_get_item_with_unique_id(194) 和 D-Bus GetItem(401) |
| 当前全局 Local Set 枚举 | 65 | 原生 factory_get_localset_enum 只读调用 |
| 当前工厂存储／列表索引 | 63 | GetLocalSetListNo 返回 ((76,63),(1,)) |
| 当前名称 | CHI_DTV | GetLocalSetStr(63) |
| 另一个可显示索引 | 0：NONE | 全部列表索引 0..76 只读遍历 |

65、63、194、401 不能混用；NONE 也不等同于美国。

## 原生工厂服务入口

- system bus 名称：org.tizen.tv.factory-service
- 对象路径：/TIFacSerObj
- 接口：org.tizen.tv.factoryservice
- 读取：GetLocalSetListNo()、GetLocalSetStr(int)、GetItem(int)
- 存在的写方法：SetParameter(int key,int val)、SetLocalSetPnp(int val) 等。

已验证可执行的只读命令：

```sh
gdbus call --system --dest org.tizen.tv.factory-service --object-path /TIFacSerObj --method org.tizen.tv.factoryservice.GetLocalSetListNo
gdbus call --system --dest org.tizen.tv.factory-service --object-path /TIFacSerObj --method org.tizen.tv.factoryservice.GetLocalSetStr 63
gdbus call --system --dest org.tizen.tv.factory-service --object-path /TIFacSerObj --method org.tizen.tv.factoryservice.GetItem 401
```

GetItem 401 返回：

```text
((401, 0, 3, 1000000069, 6, byte 0x01, 'CHI_DTV', 'Local Set'), (1,))
```

这些返回字段没有全部被定义；不要把其中的 3 或 6 当作地区范围或当前地区。

SetParameter 的回调通过 FCControl 虚表槽 0x2C 转到 FCControl::SetParameter(unsigned int,int)，第一个参数按 FactoryUniqueItem UID 解析，因此此入口讨论的 Local Set key 是 194，不是用于 GetItem 的 401。该函数还会调用范围、数据转换与执行处理。Local Set 有专门的过滤与执行分支。

修改路线应是：取得可接受的目标地区映射 → 备份工厂原始存储 → 通过原生 SetParameter 写入经过验证的表示值 → 同时校验工厂枚举、存储索引、功能配置和服务国家 → 保留原生恢复及原始存储恢复两条路线。目前没有满足第一步的美国目标值，因此未生成可直接执行的 USA 写入命令。

## 为什么 SetLocalSetPnp 不能直接拿来用

FCControl::SetLocalSetPnp 会读取：

```text
com.samsung/featureconf/wizard.region_setting_page_suppport
```

注意键名原文包含三个连续 p 的 suppport。设备原生读取 rc=0、value=0。关闭时此分支不会沿已发现的地区设置路径执行。开启路径还调用 bizTV 的 Local Set 转换函数。不能因为它只收一个整数，就当作零售 M8 通用地区 setter。

此外，GetLocalSetStr 内还调用 CheckSkipLocalset 和 fd_config_check_unused_localset。后者包含 Smart Monitor 专用逻辑。单独调用 unused 检查或枚举转换成功，不表示目标可用：某些未匹配的枚举会映射到存储 0；最终 GetLocalSetStr 的返回码必须同时核对。

存在更多底层写接口并不证明绕过上述检查后硬件／服务仍工作，也不证明改 Local Set 可以让 OTA 后的 WAS 配置自动保留。

## 型号字段：已找到 BOM Model 写入口

libfactory-interface-WW.so 中存在：

```text
factory_get_bom_model(char *buffer, int *length)
factory_write_bom_model(const char *model, int length)
```

签名由 ARM 调用约定及函数体核对；没有在设备上调用写函数。写入路径为：

```text
factory_write_bom_model
→ FCNvramMap::WriteBomModel
→ FCNvramMap 的写接口
```

内部将型号按最多 19 个字符放入 20 字节记录，再通过 NVRAM 写接口处理。反汇编出现逻辑记录地址 0xF321；这里没有把它当作已验证的原始 EEPROM 物理偏移，不能直接 dd 该地址。

这说明修改 BOM 型号字符串存在技术入口。它不等于替换整机硬件身份：工厂机型枚举、BOM 字符串、系统报告型号、设备证书和服务端登记可能各有来源。尚未证明写美版 LS32BM801UNXZA 会被后台接受或与本机所有配置匹配。

在这一入口实际执行前，需要读取当前 BOM 与相关原始存储、核对主板／面板兼容性及读回路径、确认断连后也可恢复。此前的 fconfig-before.db 只是功能配置库备份，**不包含 EEPROM、完整工厂数据或设备证书**。

## 底层固件

已准备的全球固件为 T-PTMWWC / 1720.7，与本机同平台家族。实际更新应使用本机支持的官方 OTA 或升级器接受的官方 USB 包；不能把通过改 BOM 型号来规避匹配检查当作已验证路线。

目前未验证本机完整 OTA 目标分支、升级后的 root 路径和换区保留。没有生成绕过签名或整盘强刷脚本，也没有把普通 USB 升级认定为设备身份转换。

## 当前状态与证据

- 最新服务国家仍读回 US。
- 未新增工厂参数或型号写入。
- live-introspection.txt：实际接口签名。
- live-control-item.txt：控制项、列表与当前服务国家。
- live-native-read.txt：当前枚举、工厂项和完整有效列表。
- probe/Program.cs：仅含 getter 的本机探针。
- 本目录各 asm：设置入口、NVRAM 路径与过滤逻辑的离线反汇编。


## 后续更正与深化

通用枚举中已确认 US=1。前述列表缺少 US 是本机过滤后的结果。新发现工厂 UID 761 的标签为 Preventing Import，本机值为 13，参与过滤。美国 M8 的实际出厂枚举仍未直接取得。详见 us-localset-and-force-analysis.md；没有实际强写。


## 最新执行结果：2026-10-22

用户授权后，Local Set 已通过底层接口写为 US（全局枚举 1）；独立原生 NVRAM 比较仅 0x3E23 从 63 改为 1，Preventing Import 仍为 13。用户确认海外 Apps 正常。详细结果、有效原始备份及恢复表示值见 ../localset-trial/result.md。尚未重启或 OTA 验证。
