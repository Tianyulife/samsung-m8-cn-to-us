# 1720.7 型号读取者：BOM、短型号、工厂枚举与固件平台

日期：2026-10-22。研究对象为本机运行的 1720.7 及官方包解出的对应程序。本轮只执行 getter、文件哈希读取和离线反汇编，没有修改型号或重新 root。

## 结论

完整国行型号参与商店认证请求、账号设备名称处理及 IoT 平台设备资料。它并非纯粹的“关于页面文字”。但功能配置和某些应用接口读取的是其他型号字段；更新服务的 SWModel 路径来自固件版本。不能通过改一个 BOM 字符串推断全部服务均变成美版。

## 实机字段已经分开验证

| 字段 / getter | 实际读数 |
| --- | --- |
| 工厂字符串 UID 0x238F（9103） | M80B |
| system_info_get_value_string(0) | M80B |
| 工厂字符串 UID 0x2392（9106） | LS32BM80BUCXXF |
| factory_get_bom_model | LS32BM80BUCXXF |
| system_info_get_value_string(0x124) | LS32BM80BUCXXF |
| 平台字符串 http://tizen.org/system/model_name | LS32BM80BUCXXF |
| 网络接口 device.modelName | LS32BM80BUCXXF |
| 网络接口 device.model | 22_PONTUSM_SMT |
| system_info_get_value_string(0x80) | T-PTMWWC-1720.7 |

证据：[live-model-read.txt](live-model-read.txt)、[network-model-read.json](network-model-read.json)。系统信息键号、工厂 UID、工厂机型枚举、网络字段名分别属于不同接口命名空间。

注意：原生函数名 system_info_get_model 本身不足以推断返回“完整零售型号”。这版库的该函数读取 UID0x238F，实测是 M80B；平台 model_name 接口实测返回完整 BOM 相同字符串。此前将“型号接口”笼统看成同一字段的推断应以此细分结果更正。

## 已确认的读取路径

### 1. comss：商店认证上下文和 SOAT 请求

文件：`/usr/apps/comss/bin/comss`。

```text
ICSystemInfo::GetSystemInfo
  → GetSystemInfoByType(key=0x124)
  → PRODUCT_INFO 的 +0x64 字符串
  → CAIAuth::SetAuthSystemInfo
  → CAIAuth::SetBomModel
```

关键调用点：`0x1AD6C` 设置 key0x124，`0x1AD72` 调用读取；`0x12BBA`—`0x12BBC` 将对应字段交给 SetBomModel。

后续至少两条路径读取缓存的 BOM：

- `m_SetReqAtokenInfo` 中 `0x14732` 调用 GetBomModel，参与请求所需认证信息的准备。
- `CCSJsonParser::GetSOATRequestBodyXml` 中 `0x25F7C` 调用 GetBomModel，随后以 **modelcode** 键构造请求内容；同一函数也构造 serialnumber 字段。

证据：[comss-system.asm](asm/comss-system.asm)、[comss-auth.asm](asm/comss-auth.asm)、[comss-auth-info.asm](asm/comss-auth-info.asm)、[comss-soat-request.asm](asm/comss-soat-request.asm)。

这是比“程序里有 BomModel 字符串”更强的调用链证据。当前未抓取包含账号凭据的网络请求，没有通过改型号实验验证服务器接受规则，也不声称 SOAT 路径在每次开机都会成功发出。

### 2. ssoservice：三星账号设备名称处理

文件：`/usr/apps/org.tizen.ssoservice/bin/ssoservice`。

`CSSOSUtil::GetDeviceName` 的一个分支在 `0x4D47C` 传入 key0x124，`0x4D492` 调用 ICSystemInfo::GetSystemInfoByType，后续处理设备名称字符串。源码路径标记为 `SSOSUtil.cpp`。

证据：[sso-bom.asm](asm/sso-bom.asm)。确认的是账号服务内这个具体分支读取完整型号，不能扩大为“全部登录认证都以 BOM 为唯一身份”，也没有据此推断改 BOM 会切换账号国内/海外服务器。

### 3. libiotcon：IoT 平台设备资料

文件：`/usr/lib/libiotcon.so.0.4.0`。

平台资料构建路径在 `0x1FDAA` 加载 `http://tizen.org/system/model_name`，`0x1FDAC` 调用 system_info_get_platform_string。相邻代码读取 manufacturer、platform.version、build.string，并分别保存到平台资料中。

证据：[iot-model-metadata.asm](asm/iot-model-metadata.asm)。本机该平台 getter 返回完整国行型号，因此使用该资料构建路径的 IoT 功能会取得这个值。尚未证明每一个 SmartThings 组件或云登记都必经此处。

### 4. system-info 的 Smart Monitor 系列名称路径

文件：`/usr/lib/libsystem-info-external-plugin.so`。

`system_info_get_model_series_info_smartmonitor` 先读取工厂字符串 0x2392（BOM），再读取 0x238F（M80B），使用它们构造诸如 `Smart Monitor` 的系列名称。BOM 与短型号分别参与不同判断，不是单纯返回完整型号。

证据：[smartmonitor-series.asm](asm/smartmonitor-series.asm)。工厂库对 UID0x2392 明确进入 FCNvramMap::GetBomModel，见 [factory-string-getter.asm](asm/factory-string-getter.asm)。这说明即便只改 BOM，也存在本地系列名称处理的消费者；尚未进行改值实验判断最终输出。

### 5. factory：工厂应用的直接读取

文件：`/usr/apps/org.tizen.factory/bin/factory`。

动态导入表直接引用 factory_get_bom_model，是直接访问 BOM 接口的程序。这里只确认接口依赖，未逐个恢复工厂页面的所有分支。

## 同样涉及“型号”，但不是完整 BOM 的路径

| 组件 | 确认读取的字段 / 路径 | 对修改 BOM 的意义 |
| --- | --- | --- |
| fconfigd | get_model → factory_get_model_enum | 读取独立机型枚举，不能假定改 BOM 会让它选择美版全部功能配置 |
| Web ProductInfo Pepper 插件 | ProductInfoMessageHandler::getModel → system_info_get_value_string(0) | 本机为 M80B；该 API 路径不直接返回完整 LS32 型号 |
| system_info_get_model | factory_get_str_data(0x238F) | 读取短型号 M80B |
| fw-update-service | getSWVersionString → system_info_get_value_string(0x80)，按最后一个连接号解析 | SWModel 来自 T-PTMWWC-1720.7，不能据“SWModel”字样认定来自 BOM |
| fw-usb-update-service | 对应 getSWVersionString 同样传 key0x80 | 同上，不是已确认的 BOM→升级通道链 |
| menu | factory_get_model_str、system-info 等多接口 | 还存在机型枚举显示路径；关于页面完整型号的具体数据路径未完全还原 |

证据：[fconfig-model.asm](asm/fconfig-model.asm)、[productinfo-model.asm](asm/productinfo-model.asm)、[system-model.asm](asm/system-model.asm)、[firmware-version.asm](asm/firmware-version.asm)、[调用上下文](call-contexts/)。

本轮确认了原先“SWModel 可能是完整型号”的一种假阳性。不能反过来声称所有 OTA 代码都完全不读 BOM：下载、校验、后台更新策略可能经过其他组件，需要另外追踪。

## 方法与覆盖范围

1. 扫描全球 1720.7 解包目录 usr 下本机相关字符串和动态符号。
2. [scan-consumers.py](scan-consumers.py) 生成 [consumer-imports.json](consumer-imports.json)：222 个 ELF 文件导入了所选工厂或通用 system-info 接口。**222 是候选数，不是已证明的 BOM 消费者数**；通用接口也读取语言、版本、设备类型等信息。
3. 对重点组件沿具体 key、寄存器、结构偏移和调用点追踪，并保存限定地址范围的反汇编。注释脚本为 [disassemble-consumers.py](disassemble-consumers.py)。自动字符串注释仅辅助阅读，证据以实际指令与地址为准。
4. 通过不包含 setter 的 .NET helper，独立读取本机 UID0x238F、UID0x2392、system-info key0/0x80/0x124 及平台型号，确认各编号的实际含义。
5. 用 [verify-consumer-files.py](verify-consumer-files.py) 比较设备端 9 个重点程序/库与解包文件哈希，结果见 [consumer-hash-comparison.json](consumer-hash-comparison.json)。这确认分析的代码与运行设备文件一致，不代表每个分支均已动态触发。

未穷尽动态加载、JavaScript、额外挂载分区、后台服务端规则，也未通过请求拦截读取账号令牌。没有因为没有找到直接导入，就认定某服务不会间接使用型号。

## 对后续实验的实际意义

若仅改 BOM，最直接值得观察的是 comss 请求身份、SSO 设备名称及 IoT 平台资料；短型号 M80B、机型枚举和固件平台字符串属于另外的字段。改完整型号无法替代这些独立配置，更无法从静态消费者链推导后台会把它认作美国原厂设备。

当前海外 Apps 与 OTA 已成功，尚未发现必须修改 BOM 才能解决的实际问题。本轮继续保持原型号与当前 US 配置。
