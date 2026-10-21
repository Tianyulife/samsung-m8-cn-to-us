# WAS + US 控制实验

> 当前状态（2026-10-22）：本机已完成官方 OTA 至 1720.7；升级后重新读取确认 Local Set=US、Preventing Import=0、WAS=false、服务国家=US 及海外端点均保留。本文包含历史阶段状态，最终结论见 [项目 README](../../README.md)。

2026-10-21，用户明确要求开始执行。

- 国行基线 fconfig-before.db 已通过 SQLite 在线 .backup 保存，并核对 SHA256 及 integrity_check。
- SHA256：5a1b99b0298ac05f2e4dcb09c68d07c01bbd74c33511f509059023758ecc3f19。
- 基线：服务国家 CN，WAS 国内服务器开关 true，sastv/idm/soat 均为 samsungqbe.cn。
- 仅调用原生 fconfig_set_bool 将 was.use_china_server 置 false，再通过 comss 原生接口将国家改为 US。
- 最新独立读取：开关 false，国家 US，sastv/idm 转为 samsungqbe.com，soat 为 http://0.0.0.0。
- 没有修改其他四个服务开关、系统国家、工厂 Local Set、机器型号、校准或固件。
- 设备端 600 秒 watchdog 已启动，默认执行 restore-cn.sh；已通过 keep-us 标记取消回退，随后独立读取确认标记存在。
- 首次文件名执行被 UEP 拦截，无写入；第二次改为标准输入执行成功，随后主机启动器因后台任务继承连接而超时，独立读取确认上述实际状态，不能把启动器超时等同于写入失败。
- 用户确认“出现了国外的应用，成功进入了”。美区 Apps 已通过用户功能验证；未验证全部流媒体、账号或 DRM。


## 精确数据库改动

只读核对表明 WAS 配置行仅列 65 从 true 变为 FALSE，其他列未变化；没有新增匹配 use_china_server 的 fixed 行。服务国家 US，comss_get_operating_atoken 返回 (1,)（不输出令牌本身）。证据为 readback-evidence.json。临时 root 会话结束且清理通过。

## 1720 更新问题

用户随后报告系统提示更新 1720。界面主版本不足以确认精确小版本或包分支。已解包的全球 1720.7 包：功能配置版本从 17.147.2 变为 17.154.1；fconfigd 含配置版本变化后重建逻辑，因此有恢复国内服务器默认值的可能。WAS 当前改动不是 fixed 项。dotnet、sdbd-tarlauncher 和 tar 文件哈希也发生变化，不能保证本机升级后仍可使用相同 root 路径。

外部存在另一平台 T-NKLBAKUC-1720.7 的 archive-root 成功报告：https://github.com/chris-ritsen/samsung-tv-root/issues/1 。它不构成 T-PTMWWC 的验证。尚未安装更新。
