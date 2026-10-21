# 重启验证进度

2026-10-22：用户改为手动重启。自动重启服务曾触发，但 systemctl reboot 返回状态 5，未完成重启；随后以临时 root 停止 timer/service，确认 timer inactive 且无待执行 systemd jobs。

读回 boot_id 与启动前相同，不能视为重启后验证。Local Set=US/1、Preventing Import=0、WAS 中国服务器开关=false、Smart Hub 国家=US、认证和安全端点为 samsungqbe.com 均仍正常。等待用户手动重启后另行核验。

证据：before.txt、not-rebooted-readback.txt、reboot-evidence.json、cancel-evidence.commands.json。

## 手动重启后验证通过

用户确认重启后界面没有任何问题。独立 SDK 会话读取结果见 after.txt：

- boot_id 从 47cd41dd-8faa-4a64-9180-3402c12237df 变为 4811ce2e-4ca2-44ef-b821-6e6d39ea4c7a；读取时 uptime 64.90 秒，证明确实发生内核重启。
- Local Set UID194=1、全局枚举=1（US）。
- Preventing Import UID761=0。
- WAS 中国服务器开关=false。
- Smart Hub 服务国家=US；认证及安全服务地址均保持 samsungqbe.com。
- 三个回退 watchdog 状态均为 CANCELLED。
- 工厂接口库哈希与重启前一致。

本次验证证明上述配置经正常重启保持。未验证 OTA、断电或恢复出厂后的保持情况；用户本次确认的是界面正常，未单独反馈重启后 Apps 列表测试。

## OTA 后用户反馈

用户反馈“已经成功升级了，没有任何问题”。随后尝试独立 SDK 读回，192.168.100.104:26101 返回 Connection refused，未能读取升级后的准确版本及工厂配置。端口关闭原因未确认，不能据此判断 root 是否仍可用或地区设置是否变化。当前可确认用户报告升级成功、使用正常；尚不能声称 OTA 后各底层字段经独立读回验证。

## OTA 1720.7 后独立读取通过

用户在新版 Apps Settings 中重新打开 Developer Mode 并重启后，SDK 连接恢复。只读核验见 after-ota.txt：

- boot_id=ccabc784-a14b-43a5-b71e-f1355339ac7b，uptime=96.52 秒。
- 系统构建日期由 20240806_104024 变为 20260224_181131。
- 工厂接口库 SHA256=be719e56b94d71f9f895951d1407b92154d4c0604f784a3d4d95ee97e124f08d，与本地解包的官方全球 1720.7 对应库完全相同。界面版本 1720.7 由用户确认。
- Local Set UID194=1、全局枚举=1（US）；Preventing Import UID761=0。
- WAS 中国服务器开关仍为 false；Smart Hub 服务国家仍为 US。
- 认证及安全服务仍为 osb-auth-v2.samsungqbe.com、osb-secure-v2.samsungqbe.com。
- 三个历史回退任务均 CANCELLED。

上述配置已通过本次 OTA 及随后重启的保持验证。本次仅使用 SDK 读取，没有重新提权、修改配置或验证新版 root。未验证恢复出厂后的状态，不等同于硬件证书或 BOM 身份转换。
