# 国行 1651.1 与美版型号对应全球 1720.7 的实际差异

2026-10-21。离线分析，不修改显示器。

## 比较范围与限制

比较对象为中国大陆 LS32BM80BUCXXF 的 T-PTMWWC_c.zip / 1651.1，以及美国 LS32BM801UNXZA 对应的全球 T-PTMWWC.zip / 1720.7。全球包并非美国独占包；两份版本和构建日期不同，不能将全部差异归为“国行限制”。要严格分离地区与版本，需要相同版本的两个地区包。

两份 MSD、platform.img 和 common/data_backup.xz 内的 VDFS 均已提取。新增初始化数据镜像大小分别为 320172032 和 303362048 字节。此次只提取 data_backup；systemrw_backup 已解压为镜像，尚未展开，其内容不纳入此次应用结论。data 提取日志均 Done，无 EXTRACT-FAIL/LINK-FAIL。

## 已确认的共性与差异

| 层次 | 国行 1651.1 | 全球 1720.7 | 能得出的结论 |
| --- | --- | --- | --- |
| 固件平台标识 | T-PTMWWC | T-PTMWWC | 同平台家族，不等于升级器一定接受跨区包 |
| 构建日期 | 2024-08-06 | 2026-02-24 | 存在明显版本时间差 |
| 地区服务选择 | 包含 .cn / .com 两套分支 | 同样包含两套分支 | 国行原程序已有海外服务器路径 |
| WAS 选择条件 | 产品类型非 7 时读 was.use_china_server | 对应逻辑相同 | 换区不必先替换 comss 程序 |
| 服务配置矩阵 | 地区列 65 的国内服务器标志 true | 对应配置相同 | 全球包仍含中国地区配置 |
| 默认服务国家 | 空字符串 | 空字符串 | 全球包不是把所有设备默认设置为 US |
| 国家/账号新增默认键 | 5 个键不存在 | 4 个账号国家键为空，wizard/country_value=-1 | 新增初始化键，不是预设美国国家 |
| 功能配置版本 | 17.147.2 | 17.154.1 | 升级可能触发配置库重建；是否保留运行改动未实测 |
| 腾讯语音相关组件 | 初始化镜像中存在 | 初始化镜像中也存在 | 不能把组件是否存在直接等同地区激活状态 |
| Bixby 相关组件 | 初始化镜像中存在 | 初始化镜像中也存在 | 同上，不保证国行已经开放 Bixby 服务 |
| Google Cast 平台组件 | 未发现相应目录 | 有 usr/apps/lib-googlecast-platform-tv | 新版新增组件；不保证此型号开放功能 |
| 桌面/应用组件 | 独立 Apps、Search、Source、LiveTV、Discovery 分类 manifest 等 | 这些独立 manifest 不再出现，新增 EPG manifest 等 | 组件组织有变化，不能据此说相应用户功能被删除 |
| 部分新版目录 | 无 newhome / cobalt / virtual-remote 等对应新增目录 | 有相应新增目录/文件 | 证明软件包内容更新，不是美区独有功能证明 |
| root 所用程序 | dotnet、sdbd-tarlauncher、tar 旧哈希 | 三者哈希均变化 | 静态存在不证明升级后 root 可用或不可用 |

## 地区控制的关键证据

comss 的 GetUseChinaServer 和 m_GetGPMServerUrlAndHost 已对两版反汇编。产品类型为 7 时还有 XZ 字符串判断特殊分支；本机读回产品类型 0，因此采用 WAS 布尔开关分支。

两版各 30 个型号 delta 库中 WAS 开关均只有所列地区列 65 为 true，其他所列列为 false。此次比较的 210 行产品/国内服务器相关配置在共同型号文件内一致；这不代表全部功能配置完全一致。

本机实测比静态差异更直接：在国行 1651.1 上，仅将 was.use_china_server 设 false、服务国家设 US，相关服务器转为 samsungqbe.com，用户确认出现国外应用并进入 Apps。说明这一功能的决定因素包含可写运行配置与服务器国家，而非必须更换系统程序。机器型号、工厂 Local Set、其他服务开关均未修改。

## 默认配置的纠正与解释

早期汇总记为“5 个默认国家键不同”，精确核对发现它们是新版新增，而非两个已有值从 CN 变 US：

- db/sso/pre_sa_user_country_code：旧版无键，新版空字符串。
- db/sso/sa_user_country_code：旧版无键，新版空字符串。
- db/sso/sa_user_country_code_2alpha：旧版无键，新版空字符串。
- db/sso/sa_user_country_code_3alpha：旧版无键，新版空字符串。
- db/wizard/country_value：旧版无键，新版整数 -1。

已用 GLib 解码数据库序列化的 GVariant，见 decoded-defaults.json 和 decode-buxton-defaults.py。db/comss/countrycode 在两份系统默认数据库里均为空；db/system/country 均为整数 1（没有把此整数解释成具体国家）。本机运行值 CN/US 与系统国家 29 是启动后的设备状态，不能与镜像默认值混淆。

## 文件量

原 platform 镜像提取结果：国行 60060 个普通文件，全球 61220 个；相同 43673、共同路径变化 15679、仅国行 708、仅全球 1868。文件数包含资源及配置等，并非应用数或功能数。初始化 data 镜像不包含在这组统计中。

full-component-comparison.json 记录从两个镜像层直接找到的 tizen-manifest.xml 差异。清单不涵盖所有其他类型包，因此其中数量不能当作整机应用总数，也没有将 Netflix、YouTube 等商店可下载项的地区可用性由固件文件推定出来。

## 对 OTA 的实际意义

升级的收益主要是新软件版本及其修复/组件更新；当前美区商店已经在旧国行固件上实测可用。OTA 是否保留 WAS 的修改，需检查新版初始化迁移与设备实际行为。当前修改不在 fixed 表中，不能保证升级配置重建时保留。也不能仅因两版 root 程序文件存在，就保证升级后可以再次 root。

本报告未实施 OTA、降级、系统分区写入或额外地区更改。

## 证据索引

- comparison-summary.json / file-comparison.csv：全 platform 文件对比。
- feature-delta-selectors.json：型号配置矩阵。
- 各版本 china-selector.asm / gpm-selector.asm：地区路由代码。
- decoded-defaults.json：默认值解码。
- full-component-comparison.json：跨 platform 与初始化 data 的 manifest 对比。
- 各版本 initial-data/data-extract.log：初始化镜像提取记录。
- region-trial/trial-status.md：运行设备上成功换区的证据与备份。
