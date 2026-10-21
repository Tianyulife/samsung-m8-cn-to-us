# Samsung M80B 国行与全球固件换区研究

> 当前状态（2026-10-22）：本机已完成官方 OTA 至 1720.7；升级后重新读取确认 Local Set=US、Preventing Import=0、WAS=false、服务国家=US 及海外端点均保留。本文包含历史阶段状态，最终结论见 [项目 README](../README.md)。

日期：2026-10-21。设备 LS32BM80BUCXXF，当前国行 1651.1，目标为美国 Smart Hub。

## 结论

两份官方固件已完成下载、MSD 解密、VDFS 文件系统提取和文件哈希对比。发现一个比替换固件更直接的调查方向：comss 使用 `com.samsung/featureconf/was.use_china_server` 选择国内/海外 GPM 服务器。本机原生只读 API 返回产品类型 0、该开关 true，因此它确实适用于本机。

这提供了可测试的换区候选路径，但不等于换区已成功。之前只改 `db/comss/countrycode=US` 后 Apps 报维护错误 22，已恢复 CN，用户确认正常。本段为初始离线研究状态；后续用户授权实验已完成，最新结果见末尾。

## 固件来源与完整性

| 项目 | 国行 | 美版型号对应的全球固件 |
| --- | --- | --- |
| 官方型号 | LS32BM80BUCXXF | LS32BM801UNXZA |
| 版本 | 1651.1 | 1720.7 |
| 官方发布日期 | 2025-09-26 | 2026-05-08 |
| ZIP 文件 | downloads/CN-1651.1.zip | downloads/US-1720.7.zip |
| SHA256 | 5ddf880905a3c0568bc73d1e3ccaf49ae65ab79c7f84e48ceabb5f531562b57f | 4f81adb87128bab8a5783b1ca4187cd78f34b56376def3902c0c6b95e924b098 |


- 国行支持页：https://www.samsung.com/cn/support/model/LS32BM80BUCXXF/
- 美版型号官方支持页：https://www.samsung.com/hk_en/support/model/LS32BM801UNXZA/
- 国行下载：https://downloadcenter.samsung.com/content/FM/202509/20250926140925796/T-PTMWWC_c.zip
- 全球下载：https://downloadcenter.samsung.com/content/FM/202605/20260508160345100/T-PTMWWC.zip

两份版本不同，不能把所有差异归因于销售地区。已检查 ZIP CRC；文件哈希不是对三星升级签名的验证，也没有证明可以跨区刷入。

## 提取与对比

- 原始 USB 包位于各版本 usb/；解密分区位于 msd/；文件系统位于 rootfs/root/。
- 使用 unixtract 和经本地修正的 vdfs-unpack。修正包含 hZip 分块、认证表偏移以及避免在 Mac 创建固件绝对符号链接。补丁保存于 ../firmware-tools/vdfs-reader-adjustments.patch。
- 两份 VDFS 提取日志均完成，无 EXTRACT-FAIL/LINK-FAIL。
- 国行提取的 comss 与此前从显示器读取的 comss 哈希一致，离线程序对应实际设备。
- 国行 60060 个普通文件，全球 61220 个；43673 个相同，15679 个变化，仅国行 708 个，仅全球 1868 个。详见 file-comparison.csv。
- 选择核对的 42 个默认国家/服务配置键中，37 个相同、5 个变化。comss 国家、GPM URL 和系统国家默认键均相同。

## 服务器选择逻辑

两版 comss 的 `ICSystemInfo::GetUseChinaServer()` 都按以下逻辑执行：

```text
product_type = system_info_get_custom_int(product.product_type)
if product_type != 7:
    use_china = system_info_get_custom_bool(was.use_china_server)
else:
    use_china = (system_info_get_value_string(0x7532) == "XZ")
```

这里 key 的完整前缀为 `com.samsung/featureconf/`。特殊分支的枚举含义未确认；本机产品类型为 0，不走该分支。对本机读取 0x7532 返回 -22，也不能把它当成本机有效的 Local Set。

`CHttpRequest::m_GetGPMServerUrlAndHost()` 在生产分支用上述布尔值选择 `https://gpm.samsungqbe.cn` 或 `https://gpm.samsungqbe.com`。开发/测试服务器另有开关，不应改成开发环境。

本机只读结果见 native-region-probe/live-sdk-read.txt：

```text
product.product_type rc=0 value=0
was.use_china_server rc=0 value=1
model_name rc=0 value=LS32BM80BUCXXF
```

对应证据：CN-1651.1/china-selector.asm、US-1720.7/china-selector.asm 和各版本 gpm-selector.asm。注释脚本 annotate-arm-strings.py 可重建字符串引用。

另外，两版各 30 个型号 delta 数据库中，该 WAS 开关都在列 65 为 true，其余所列地区列为 false。此次抽取的 210 行服务器/产品相关配置在共同型号文件中全部一致，见 feature-delta-selectors.json。列 65 是数据库内部索引，此处没有将它等同于公开国家枚举，也不要直接改成美国国家代码。

## 如何理解此前的错误 22

改国家为 US 后，官方 SmartHubConfig.Country 确实读回 US，但实际服务 URL 仍为 samsungqbe.cn。当前又确认独立的国内服务器开关为 true。这说明仅修改国家并未完成服务器切换。

“美国服务国家与国内服务器组合导致错误”是有代码和观测支持的假设，尚未通过控制实验确认。不能把 22 确认为这个原因的专属错误码。comss 还会上报 Localset、国家、型号等字段，后端也可能校验它们。

## 候选方案与验证顺序

1. 首选研究原生功能配置接口：仅将 WAS 国内服务器开关切到 false，并配合服务国家 US。先取得运行中配置备份及精确回退方法，再确认实际 GPM/Apps/SSO URL 切到海外；最后才由用户验证 Apps 与条款页面。
2. `libfconfig.so` 确实导出 fconfig_get_bool / fconfig_set_bool。它不是已证实的临时内存开关：fconfigd 的 set_value_cache_and_db 调用 fcdb_key_update 和 cache_update_data，存在持久化写入。因此本轮只分析，未调用 setter。只读配置库位于 /opt/data/fconfig/fconfig.db，SDK 用户无直接访问权；已通过临时 root 完成只读查询，未执行更新。
3. 若需要纯临时验证，应进一步设计对 comss 进程范围生效的覆盖，并保证回退后恢复进程；目前未实现。不能把存在 root 权限等同于可以直接加载任意未签名原生代码。
4. 暂不动工厂 Local Set、型号、面板及校准数据。只有在海外服务请求明确显示还依赖这些字段后，才研究相应原生接口与已验证枚举。
5. 整包跨刷不是已经证明的必要步骤：全球固件也包含同样的国内服务器分支与配置矩阵，而本机有效选择取决于运行时/工厂配置。现有分析不能保证刷全球固件会改变这些配置，也没有验证升级器兼容性、签名接受或恢复路线。
6. 如果最终需求只是使用特定应用，可单独评估签名侧载；这不能替代美区商店，也不保证应用的 DRM、账号或地区授权。

## 当前状态

上次设备读回服务国家 CN。本轮新增操作为只读 API 检查、离线对比和只读数据库调查。没有开始刷机或恢复出厂，未修改当前功能开关。

## 运行中数据库核对

临时 root 的两条只读查询成功，结果见 live-feature-db-root-read.json。数据库大小 684032 字节，结构与固件 delta 数据库一致；`fixed` 表没有匹配 `use_china_server` 的行。列 0/65 对比如下：

| 配置后缀 | 列 0 | 列 65 |
| --- | --- | --- |
| was.use_china_server | false | true |
| pdss.use_china_server | false | true |
| account.use_china_server | false | true |
| homedatacontrolservice.use_china_server | false | true |
| security.fkp.use_china_server | false | true |

随后经原生 system_info_get_custom_bool 逐项读取，上述五个开关均 rc=0、value=1（true），见 native-region-probe/live-sdk-read.txt。这确认商店之外还有多个服务的国内服务器开关处于开启状态。仅改 WAS 足以作为 GPM 路由的候选控制实验，但不能据此承诺三星账号等整个生态完成换区，更不应同时盲改全部五个开关。后续应按实际请求和回退能力逐项验证。

本次临时 root 正常结束，工具返回 system_files_unchanged=true、staging_cleaned=true。服务国家仍为 CN。


## 后续执行结果：美区 Apps 已成功

用户明确要求执行后，完成配置库备份及完整性核对，调用原生接口将 WAS 国内服务器开关置 false、服务国家改为 US。独立读回认证/安全服务从 samsungqbe.cn 变为 samsungqbe.com；用户确认出现国外应用并成功进入 Apps。已确认保留标记存在，取消实验自动回退。精确改动仅 WAS 行的地区列 65，其他服务开关未改；未刷固件。

详细记录与备份：region-trial/trial-status.md、region-trial/fconfig-before.db。该成功不代表所有美区应用的账号、DRM 或地域授权均已验证。用户随后看到 1720 更新提示，尚未安装；更新可能重建功能配置，亦未确认更新后本机 root 路径。


## 分层差异分析

新增 platform 与初始化 data 两层核对，见 regional-differences.md。5 个国家默认键的差异已明确为新版新增空值／-1，而非 CN 到 US；两版都包含腾讯语音和 Bixby 相关组件。


## 工厂层接口后续核对

详见 factory-research/modification-paths.md。本机 Local Set=CHI_DTV（全局枚举 65、存储索引 63、UID 194、控制项 401）；完整列表读取仅 NONE 和 CHI_DTV 有效。PnP 地区设置支持开关关闭。型号 BOM 写接口存在但涉及 NVRAM；本轮没有执行上述工厂写入。


## 最新执行结果：2026-10-22

用户授权后，Local Set 已通过底层接口写为 US（全局枚举 1）；独立原生 NVRAM 比较仅 0x3E23 从 63 改为 1，Preventing Import 仍为 13。用户确认海外 Apps 正常。详细结果、有效原始备份及恢复表示值见 localset-trial/result.md。尚未重启或 OTA 验证。


## 后续实测：Preventing Import = 0

2026-10-22 用户授权测试后，Preventing Import 从 13 改为 0，Local Set 保持 US。地区列表从 2 项增至 31 项，用户确认 Apps 正常；原生 NVRAM 只改变 0x3E65 一个字节。测试值已保留并取消自动恢复。0 的解锁效果已实测，不代表已经取得美国 M8 原厂值。详见 import-trial/result.md。
