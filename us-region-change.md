# M80B 美区服务地区切换

> 当前状态（2026-10-22）：本机已完成官方 OTA 至 1720.7；升级后重新读取确认 Local Set=US、Preventing Import=0、WAS=false、服务国家=US 及海外端点均保留。本文包含历史阶段状态，最终结论见 [项目 README](README.md)。

日期：2026-10-21。设备：LS32BM80BUCXXF，Tizen 6.5。目标为 Smart Hub 服务国家 US，不是刷写美国固件或更换工厂 Local Set。

## 已完成

1. 建立经认证的临时 UID/GID 0 会话。
2. 通过本机三星 comss 服务读取国家列表，返回的 modelId 为 22_PONTUSM_SMT，列表包含 US（美国）。该列表不等于所有美区服务均适用于本机。
3. 原始 vconf 键 db/comss/countrycode 为 String CN；本机官方 Tizen.TV.Environment.SmartHubConfig.Country 同时返回 CN。
4. 审阅本机 comss 反汇编，确认 comss_set_gpm_countrycode 方法调用 vconf_set_str 写入国家键，并通过既有配置监听器处理变化。
5. 使用系统 D-Bus 接口 comss.server /comss/server，方法 comss.server.interface.comss_set_gpm_countrycode，传入 US。方法正常返回。
6. vconf 和官方 SmartHubConfig.Country 均返回 US，重复读取仍为 US。

原值记录：region-before-us.json。切换与读回证据：region-research-queue/result-0025.json、result-0026.json。

## 实际结果与回退

用户打开 Apps 后报告“服务器正在维护，请稍后再试 22”。随后已执行原生 setter 恢复 CN，vconf 与 SmartHubConfig.Country 读回 CN，用户确认 Apps 已恢复正常。不能把本次参数写入称为成功换区。

## 未完成的验证

- 退出并重开 Apps 后的实际商店内容、条款页面与账号登录行为。
- 正常关机/重启后的地区是否保持 US；当前没有为此主动重启显示器。
- 第三方流媒体可用性、网络地域和账号要求。

comss_get_term_error 返回字符串 3，但未取得切换前该值、也未确认此枚举含义，不能据此认定切换成功或失败。

## 未进行

未重置 Smart Hub，未恢复出厂，未修改工厂 Local Set、机器型号或系统国家整数；未刷写固件。没有依据将本机称为美国销售版本。

## 回退

恢复原始服务国家的方法与切换相同，参数改回 CN。region-restore-cn-commands.json 保存的回退命令已执行，读回 CN。回退配置值不保证恢复可能由商店自行变更的所有应用数据。

## 官方参考

- SmartHubConfig：https://developer.samsung.com/smarttv/develop/api-references/tizenfx-tv-api-references/tizen.tv/smarthubconfig-class.html
- ProductInfo：https://developer.samsung.com/smarttv/develop/api-references/samsung-product-api-references/productinfo-api.html

官方公开的 ProductInfo 服务国家属性为只读；本次使用的是经本机 introspection 和代码核对的原生 comss 方法，而非假设公开 API 可以设置该值。


## 固件对比后续

两版固件已提取，并发现独立的 was.use_china_server 功能开关。本机只读结果为 true，产品类型为 0。完整证据、限制和后续候选路径见 firmware-analysis/README.md；尚未修改该开关。


## 后续组合实验成功

单独改服务国家的初次实验失败后，用户授权组合实验。原生 WAS 国内服务器开关设为 false，并将服务国家设 US；独立读回海外认证/安全服务地址，用户确认出现国外应用且成功进入 Apps。已保留 US 并取消自动回退。详情见 firmware-analysis/region-trial/trial-status.md。尚未升级系统。


## 最新执行结果：2026-10-22

用户授权后，Local Set 已通过底层接口写为 US（全局枚举 1）；独立原生 NVRAM 比较仅 0x3E23 从 63 改为 1，Preventing Import 仍为 13。用户确认海外 Apps 正常。详细结果、有效原始备份及恢复表示值见 firmware-analysis/localset-trial/result.md。尚未重启或 OTA 验证。


## 后续实测：Preventing Import = 0

2026-10-22 用户授权测试后，Preventing Import 从 13 改为 0，Local Set 保持 US。地区列表从 2 项增至 31 项，用户确认 Apps 正常；原生 NVRAM 只改变 0x3E65 一个字节。测试值已保留并取消自动恢复。0 的解锁效果已实测，不代表已经取得美国 M8 原厂值。详见 firmware-analysis/import-trial/result.md。
