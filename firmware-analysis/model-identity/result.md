# 1720.7 上型号代码与改美版型号的影响

日期：2026-10-22。本轮用户要求连接设备、检查国行型号及分析改海外型号的影响。仅部署并执行 getter 探针；未调用型号 setter、未重新 root、未修改地区或工厂配置。

## 本机读回

| 来源 | 读数 |
| --- | --- |
| factory_get_bom_model | rc=1，length=14，LS32BM80BUCXXF |
| system_info_get_platform_string(model_name) | rc=0，LS32BM80BUCXXF |
| 网络接口 /api/v2/ 的 device.modelName | LS32BM80BUCXXF |
| 网络接口 device.model | 22_PONTUSM_SMT |
| Local Set UID194 / 全局枚举 | 1 / US |
| Preventing Import UID761 | 0 |
| WAS 国内服务器开关 | false |
| Smart Hub 国家 | US |

证据为 live-model-read.txt、network-model-read.json。网络原始返回可能含设备标识，只保存上述允许字段。

这证明当前仍保留国行型号，但已经实现海外应用与官方 OTA。没有证据表明改型号是这些成功结果的必要条件。

## 字段不能混为一谈

- BOM Model：完整销售型号字符串，存在独立工厂存储读取/写入接口。
- 工厂 Model 枚举：另一项机型选择，不能用 BOM 字符串代替。本轮没有写入或新读出其值。
- 平台 Model Code：本机网络接口为 22_PONTUSM_SMT。不能把它替换成 LS32 开头的零售型号。
- Local Set 与 Smart Hub 国家：已分别为 US，独立于当前仍为国行的 BOM。
- 序列号、证书、DUID、EDID 与服务端设备登记：没有因本次型号读取发生改变；也没有证据证明写 BOM 会同步更新这些身份。

## 离线代码证据

1720.7 的工厂库动态符号表仍定义 factory_get_bom_model、factory_write_bom_model、factory_get_model_enum。定义了 setter 不等于已验证新版写权限、执行成功或恢复成功。

此前 1651.1 的反汇编显示 factory_write_bom_model → FCNvramMap::WriteBomModel，将型号放入最多 19 字符、20 字节记录，再调用存储写接口；记录地址 0xF321 不是已经确认可直接 dd 的物理偏移。新版实现不能未经逐项核对就等同旧版。

1720.7 comss 中有包含 BomModel、Localset、CountryCode 的设备信息格式串；说明 BOM 参与设备信息处理，但本轮未用改型号实验或请求抓包证明每条请求都会携带它、后台如何处理它。

1720.7 fconfigd 引用 factory_get_model_enum 及 /etc/fconfig/delta，并存在缺少机型 delta 后使用默认数据库的提示。固件更新服务引用 system-info 的 get_model 和 SWModel。上述证据支持继续研究型号相关消费者，不足以证明写 BOM 后会重选 delta、改变 OTA 通道或重新初始化硬件。

## 影响判断

| 项目 | 当前可以得出的判断 |
| --- | --- |
| 关于页面 / 网络发现显示 | BOM 与系统、网络型号当前一致；改 BOM 后是否立即传播、是否有缓存，需要实际读回验证 |
| Smart Hub / 服务认证 | 可能改变设备上报及后台识别；可能成功，也可能产生与现有身份不一致的处理，尚未实测 |
| 应用列表 | 官方按机型组和服务国家发布应用；改一个零售型号不保证改变机型组或解锁应用 |
| 功能配置 | fconfigd 使用工厂 Model 枚举；仅改 BOM 不应直接推断会加载美版全部默认配置 |
| OTA | 更新组件使用型号信息，但当前国行 BOM 已成功升级；改 BOM 的后续 OTA 路由未验证 |
| 面板 / 接口 / 校准 | 字符串变更不改变物理硬件。若进一步修改工厂 Model、面板类型或相关配置，则超出单字段 BOM 实验范围 |
| DRM / 设备证书 | 没有证据证明改 BOM 会生成海外证书或获取服务授权 |
| 恢复 | 原型号已读出；1720.7 写入和恢复尚未实测，也没有建立不依赖正常系统的救援入口 |

建议保持当前正常工作的 BOM。若继续研究，应先追踪 BOM 的读取/缓存/消费者，确认 1720.7 的存储记录与恢复方法，再讨论单字段受控实验，避免同时更改工厂机型枚举、面板类型、序列号或证书。

## 官方参考

- [Samsung ProductInfo API](https://developer.samsung.com/smarttv/develop/api-references/samsung-product-api-references/productinfo-api.html)：区分 getModelCode、getModel、固件与设备身份等属性。
- [Samsung 应用分发规则](https://developer.samsung.com/tv-seller-office/guides/applications/distributing-application.html)：应用按指定 Smart TV model group 和 service country 发布。
- [海外参考型号 LS32BM801UNXZA 支持页](https://www.samsung.com/hk_en/support/model/LS32BM801UNXZA/)：型号参考，不能替代实机出厂身份或硬件一致性证明。

## 继续追踪型号读取者

后续已细分并实测短型号 M80B（工厂 UID0x238F / system-info key0）、完整 BOM（UID0x2392 / key0x124）及固件版本（key0x80）。comss 的 SOAT 请求构造明确写入 BOM 为 modelcode；账号设备名称分支与 IoT 资料也读取完整型号。更新服务 SWModel 的已追踪路径实际来自固件版本，不应将其视为 BOM 证据。完整调用链、代码地址和限制见 [型号读取者报告](consumers.md)。

## 后续可回退实验已完成

用户授权后已在 1720.7 完成蓝色美区 BOM 型号往返写入，界面变化与 Apps 短时正常经用户确认，最终恢复原型号且完整原生 NVRAM 与实验前一致。见 [BOM 实验结果](../bom-trial/result.md)。
