# 1720.7 蓝色美区 BOM 型号可回退实验

> 当前状态：用户随后明确要求保留美版型号，已再次写入 LS32BM80BUNXGO，独立核验及随后正常重启保持均通过，网络接口旧型号缓存已刷新，且不再计划自动恢复；见末尾“正式保留”。

日期：2026-10-22。设备原型号 LS32BM80BUCXXF；用户明确授权进行带回退保护的改型号验证。目标为蓝色美区销售型号 LS32BM80BUNXGO。本实验只调用 BOM setter，不修改短型号、工厂机型枚举、面板、序列号或证书。

## 写入前准备

- 1720.7 上 archive-root 临时会话已实际认证 UID/EUID=0，系统身份文件校验与 staging 清理通过。见 root-preflight.json。
- 核对当前工厂库哈希 be719e56b94d71f9f895951d1407b92154d4c0604f784a3d4d95ee97e124f08d，并重新反汇编本版 factory_write_bom_model 与 FCNvramMap::WriteBomModel。
- 新保存完整 65536 字节原生 NVRAM，文件 native-eeprom-before.bin，权限 0600；SHA256=9288924e4b4f29ec0345bcf15fabd06bfc61eeee9fcd245bec661ba340035cdb。
- 本机原始 BOM 在读取偏移 0xF321，值 LS32BM80BUCXXF；短型号 M80B，工厂机型枚举 957，Local Set=1 / US，Preventing Import=0。
- 先将原型号写回，API 成功返回 1，原生存储哈希与新备份完全一致。第一次流程因设备无 cmp 工具在比较步骤停止，未写目标型号；改用 SHA256 比较后继续，历史失败记录未覆盖。

## 保护措施

helper/BomTrial.dll 仅暴露 read、backup、preflight-original、set-target、restore 模式，唯一写入接口为 factory_write_bom_model。型号写入仅允许已知原值与目标值，并检查短型号 M80B、Local Set=US、Preventing Import=0；控制脚本另核对工厂枚举 957、库/程序/备份哈希。

目标写入前启动 600 秒 watchdog，默认执行恢复原型号，失败最多重试 3 次；没有保留目标型号的 keep 标记。只有确认手动恢复成功且完整存储哈希匹配基线后，才设置 restored-and-verified 标记取消后续重复恢复。

watchdog 是设备当前进程，不是开机恢复系统。实验期间未安排重启或断电；不将它描述为可抵御重启、断电或无法启动的救援机制。

## 目标写入与独立核验

写入：factory_write_bom_model("LS32BM80BUNXGO",14)，返回 1。完整调用见 apply-resume-evidence.json。

随后在独立 SDK 会话读取，见 after-target.txt、after-target.json：

| 字段 | 目标写入后 |
| --- | --- |
| BOM / 工厂字符串 0x2392 | LS32BM80BUNXGO |
| system-info key0x124 | LS32BM80BUNXGO |
| 平台 model_name | LS32BM80BUNXGO |
| 短型号 / 工厂字符串 0x238F | M80B |
| 工厂机型枚举 | 957 |
| Local Set / Preventing Import | US / 0 |
| WAS 开关 / 服务国家 | false / US |
| 认证与安全服务 | 海外 samsungqbe.com |
| 网络接口 device.modelName | 仍为 LS32BM80BUCXXF |
| 网络平台代码 | 22_PONTUSM_SMT |

原生 NVRAM 只变化 3 个字节，全部位于 BOM 20 字节记录内，记录外变化为 0。写后 SHA256=8df166ee067a8563dcf4dafad7461b29b5fa29c28ee84855a270c62da40ca479。

网络接口仍返回旧型号，与新进程 getter 的新值不一致，说明消费者间存在缓存/刷新差异；本轮未重启服务验证缓存来源。不能把存储修改与 getter 成功扩大为所有三星云服务均已接受美版身份。

## 验证进度

目标写入与存储范围核验通过。用户确认退出并重新打开应用页面后“正常，没有新增报错”，随后补充已实际看到界面型号更改。之后按实验计划主动恢复原型号，并完成独立核验。

## 往返试验结果：完整回退已验证

实际完成 LS32BM80BUCXXF → LS32BM80BUNXGO → LS32BM80BUCXXF 的往返写入。恢复 API 返回 1；root 会话内原生备份哈希匹配原基线后设置 restored-and-verified 标记，避免 watchdog 到期重复写入。

随后独立 SDK 会话再次读取完整 NVRAM：after-restore.bin 与 native-eeprom-before.bin 全部 65536 字节完全一致，差异为 0，SHA256 同为 9288924e4b4f29ec0345bcf15fabd06bfc61eeee9fcd245bec661ba340035cdb。证据见 after-restore.json、after-restore.txt、restore-evidence.json。

最终 BOM、system-info 完整型号与平台 model_name 均为原型号 LS32BM80BUCXXF；M80B、工厂枚举 957、US / Preventing Import=0、WAS=false 及海外认证端点均正常保留。系统仍为 T-PTMWWC-1720.7。

四次临时 root 会话（前置读取、原值预检中止、目标写入、主动恢复）均通过系统身份文件哈希与 staging 清理检查。独立验证脚本和只读探针仍保留，不代表持久 root。

本次证明：BOM 在 1720.7 上可写、界面可显示新型号、短时应用测试无新增报错，并且可以通过已验证接口恢复原值。没有验证目标型号下重启、断电、服务缓存刷新、全量云认证或后续 OTA。原值完整存储恢复也不等同于清除了实验期间所有日志、缓存或服务端历史。

## 正式保留：LS32BM80BUNXGO

用户在完成往返试验后明确要求“现在彻底改成美版型号”。本轮仅重新写入此前验证过的蓝色美区 BOM，其他身份与工厂机型枚举不改。

最初写入前检测到原生 NVRAM 相比上次基线在 0x3412、0x3462 两个字节不同，保护检查中止，未写型号；两处含义未确认，不将其推断为某种计数器。另存 retained-before.bin（权限 0600），确认 BOM 原值、US、Preventing Import=0 仍正常，并按这份新基线保留其他字节。新基线 SHA256=030a5fd3f8aa132f12d75a83c678c6f351d6dcb5735f2d496634f6484ad0b533。

随后通过原生 BOM setter 写入目标，API 返回 1。root 会话内及独立 SDK 会话均验证成功：

- BOM、工厂字符串0x2392、system-info key0x124、平台 model_name 均为 LS32BM80BUNXGO。
- 短型号 M80B、工厂机型枚举957、US / Preventing Import=0、WAS=false 和海外认证/安全地址保留。
- after-retained.bin 相比 retained-before.bin 只改变 BOM 记录内3个字节，无记录外变化。SHA256=47589f3fc96068c07988d1d2d252f21ca39f4703499410c1e71a8f75e8d3a4a3。
- 历史 watchdog 的 restored-and-verified 取消标记仍存在；本轮没有重新启动定时回退。新建 retained-blue-us-model 状态标记并独立核对。
- root 会话 system_files_unchanged=true、staging_cleaned=true。
- 网络接口 device.modelName 仍显示缓存旧型号，未重启刷新；目标型号下的重启保持与云端接受规则仍未验证。

证据：retain-resume-evidence.json、after-retained.txt、after-retained.json。原始有效备份与已经验证过的 restore 模式继续保留，今后需要恢复时仍须先核对当时基线。

## 正式保留后重启：验证通过

用户手动重启后，独立 SDK 读取成功；本轮没有重新提权或写入配置。证据为 after-retained-reboot.txt、after-retained-reboot.json。

- boot_id=63e0f0a4-6e60-489c-9e36-edddbe166238，与此前记录不同；读取时 uptime=125.94 秒。
- 工厂 BOM / UID0x2392、system-info key0x124、平台 model_name 均保留 LS32BM80BUNXGO。
- 局域网 /api/v2/ 的 device.modelName 已从缓存的国行值刷新为 LS32BM80BUNXGO；平台代码仍为 22_PONTUSM_SMT。
- 短型号 M80B、工厂机型枚举957、Local Set=US、Preventing Import=0、WAS=false、海外认证/安全端点均保留。
- 系统版本为 T-PTMWWC-1720.7；保留标记与历史自动恢复取消标记仍存在。

至此已验证目标 BOM 的正常重启保持和网络型号缓存刷新。没有据此推断所有云端服务均已接受新型号，也没有测试新型号下的后续 OTA、恢复出厂或断电。
