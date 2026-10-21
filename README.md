# Samsung M8 国行换区与海外 OTA 研究

本项目记录一台中国大陆版 Samsung Smart Monitor M8 / M80B 从国行 1651.1 切换到美国 Smart Hub、调整工厂地区参数，并成功通过官方 OTA 升级到 **1720.7** 的全过程。研究与实机操作于 **2026-10-21 至 2026-10-22（北京时间）** 完成。

**最终结果：海外应用可用，用户确认升级后使用正常；独立读取确认 US 地区配置在正常重启、OTA 和升级后再次重启后均保留。**

操作过程见 [步骤文档](docs/操作步骤.md)。本文件是当前结论入口；各阶段记录保留了当时尚未验证的状态，应结合最终证据阅读。

## 实机与最终配置

| 项目 | 初始状态 | 最终状态 |
| --- | --- | --- |
| 型号 / 销售地区 | LS32BM80BUCXXF / 中国大陆 | 未修改型号与销售后缀 |
| 固件 | T-PTMWWC-1651.1 | 用户界面确认 1720.7，已完成 OTA |
| 系统 | 2022 年 Tizen 平台；实测 Tizen 6.5 / ARMv7 | 系统构建已更新 |
| Local Set 全局枚举 | 65 / CHI_DTV | **1 / US** |
| Local Set 原始存储值 | 63 | **1** |
| Preventing Import | 13 | **0** |
| Smart Hub 服务国家 | CN | **US** |
| WAS 国内服务器开关 | true | **false** |
| 认证 / 安全服务域名 | samsungqbe.cn | **samsungqbe.com** |

RAM 2.5 GB、标称存储 8 GB 为用户提供的规格。没有修改 BOM 型号、序列号、设备证书、面板或校准参数，也没有通过原始分区写入强刷固件。最终使用的是官方 OTA。

## 核心发现

### 服务国家和服务器选择是两个独立设置

仅把 `db/comss/countrycode` 改成 `US` 时，Apps 曾报“服务器正在维护，请稍后再试 22”，当时认证等端点仍指向国内服务器。恢复 CN 后 Apps 恢复。

离线分析两版 `comss` 并在实机核对后，确定本机产品类型为 0，服务器选择受以下开关控制：

```text
com.samsung/featureconf/was.use_china_server
```

通过原生 `fconfig_set_bool` 将其设为 false，再通过原生 comss 接口设置服务国家 US，认证和安全服务地址转到海外，用户确认出现国外应用并成功进入。错误 22 不是已确认含义的专属错误码；这里记录的是本机组合实验结果。

其他四个国内服务器开关未参与本次修改；不能由 WAS 切换推断账号等整个生态均已转换。

### 工厂 Local Set 的读取值和写入值不对称

工厂库为 `/usr/lib/libfactory-interface-WW.so`。

| 参数 | UID | 原始存储位置 | 原值 | 目标值 |
| --- | --- | --- | --- | --- |
| Local Set | 194 | 0x3E23 | 存储 63；读取枚举 65（CHI_DTV） | 存储及枚举均为 1（US） |
| Preventing Import | 761 | 0x3E65 | 13 | 0 |

`factory_get_data(194)` 返回经过转换的全局枚举；`factory_set_data(194, value)` 接收存储表示。**恢复本机原始 CHI_DTV 应写 63，不能写 65。**

这次通过原生接口写入 US，独立读取 64 KiB 原生 NVRAM，确认只改变 `0x3E23` 一个字节。之后将 Preventing Import 由 13 改为 0，独立比较只改变 `0x3E65` 一个字节。

### Preventing Import = 0 解除本机菜单地区过滤

修改前有效 Local Set 名单只有 NONE、CHI_DTV；修改后增至 31 项，包含 US、EU、KOR、TAIWAN、HKG_DTV 等。本机实测证明了 0 的过滤解除效果，**没有取得美国 M8 实机出厂转储，不能称其为已确认的“美版原厂值”或通用“全球值”。**

### 固件是同一家族，地区还取决于运行配置

已下载并提取国行 1651.1 与美国型号对应的全球 1720.7 官方包，完成 MSD 解密、VDFS 提取及文件比较。两者平台家族均为 `T-PTMWWC`，均包含国内/海外服务器选择逻辑与多地区配置。全球包并非美国独占包。

版本号不同，文件差异同时包含版本更新和地区因素，不能把全部差异归因为“国行限制”。详见 [固件分层对比](firmware-analysis/regional-differences.md)。

## 验证结果与边界

| 验证 | 结果与证据 |
| --- | --- |
| 1651.1 临时 root | 已成功；UID/EUID/GID/EGID 为 0，会话结束后清理通过 |
| 海外 Apps | 用户在各阶段确认正常；升级后也反馈使用正常 |
| Local Set 写入 | [独立 NVRAM 差异](firmware-analysis/localset-trial/storage-diff.json) |
| Preventing Import 写入 | [独立 NVRAM 差异](firmware-analysis/import-trial/storage-diff.json) |
| 正常重启保持 | boot_id 改变，设置均保留；[读回结果](firmware-analysis/reboot-verification/after.txt) |
| OTA 至 1720.7 后保持 | 再次重启并独立读回全部目标字段；[最终证据](firmware-analysis/reboot-verification/after-ota.txt) |
| 新版系统文件 | 工厂接口库 SHA256 与解包的全球 1720.7 对应库完全一致 |

最终系统构建日期从 `20240806_104024` 变为 `20260224_181131`；认证、安全服务分别为 `https://osb-auth-v2.samsungqbe.com`、`https://osb-secure-v2.samsungqbe.com`。

**尚未验证：**1720.7 上重新取得 root、恢复出厂后的配置保持、未来 OTA、全部应用的账号/DRM/地域授权、断电测试与固件降级。升级后的成功读取使用 SDK 通道，不等于已重新验证 root。

## 文档与工具索引

| 路径 | 内容 |
| --- | --- |
| [docs/操作步骤.md](docs/操作步骤.md) | 环境、开发者模式、实际修改顺序、备份、核验与恢复 |
| [firmware-analysis/README.md](firmware-analysis/README.md) | 固件来源、提取、服务器选择逻辑；含早期研究记录 |
| [firmware-analysis/factory-research/](firmware-analysis/factory-research/) | 工厂菜单、枚举、过滤及底层接口分析 |
| [firmware-analysis/region-trial/trial-status.md](firmware-analysis/region-trial/trial-status.md) | WAS + US 组合实验 |
| [firmware-analysis/localset-trial/result.md](firmware-analysis/localset-trial/result.md) | Local Set 修改与备份 |
| [firmware-analysis/import-trial/result.md](firmware-analysis/import-trial/result.md) | Preventing Import=0 实验 |
| [firmware-analysis/reboot-verification/result.md](firmware-analysis/reboot-verification/result.md) | 重启、OTA 后核验全过程 |
| [root-research-findings.md](root-research-findings.md) | 1651.1 临时 root 的本机证据 |
| [verify-temporary-root.py](verify-temporary-root.py) | 本地 SDB 适配与临时 root 命令入口 |

## 备份与复现范围

有效原生备份位于 `firmware-analysis/localset-trial/native-eeprom-before.bin` 等文件，校验值见步骤文档。早期普通 `dd` 读取的 `eeprom-before.bin` 是全 FF 的无效数据，不能用作恢复。

本仓库目前是**本机研究工作区**。脚本固化了本机 IP、基线值和旧固件哈希，并非适配所有型号的一键工具。当前机器已完成修改，勿重新执行历史 apply/backup 脚本覆盖证据。原生备份、配置库、日志及证书材料可能含设备或账号信息，分享文档时应单独检查附件。

## 资料来源

- [三星：连接实机及启用 Developer Mode](https://developer.samsung.com/smarttv/develop/getting-started/using-sdk/tv-device.html)
- [AeroTizen](https://github.com/helalaou/AeroTizen)
- [samsung-tv-root](https://github.com/chris-ritsen/samsung-tv-root)，本地研究基于提交 `4ad2c4d3b0d0e0da4b5b7ebe4a787e94596f416b`
- [Bishop Fox：Samsung Tizen 命令注入研究](https://bishopfox.com/blog/samsung-tizen-os-version-through-9-0)

上游对其他型号的测试记录不替代本机验证。本项目的最终结论以本地实机证据为准。
