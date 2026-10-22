# M80B root 与跨区固件研究

日期：2026-10-21。设备：LS32BM80BUCXXF，用户报告固件 T-PTMWWC-1651.1；已确认 Tizen 6.5、ARMv7。

## 后续验证：临时 root 已成功

2026-10-21，在用户要求继续后，构建上游 archive-root 和 root-agent 的 netcoreapp3.1 载荷，通过本地 AeroTizen Python SDB 传输适配器进行一次临时 root 验证。兼容处理仅涉及目录枚举 .NET 版本、SDK 10 下显式 restore netcoreapp3.1，以及替代官方 sdb 主机程序的传输；未修改上游提权载荷源码。

- 经 challenge/HMAC 认证的 agent 报告 uid/euid/gid/egid 均为 0。
- CapEff=0000003fffffffff，SMACK 标签仍为 User；不能推断所有安全边界均已消失。
- 执行只读命令 id、uname、读取进程凭据字段、/proc/mounts 和 /proc/partitions，返回码均为 0。
- 系统根挂载为只读 vdfs。原始存储设备 mmcblk0 为 7,634,944 KiB（约 7.28 GiB），有 24 个分区；尚未证明每个分区的用途。
- /etc/passwd 与 /usr/share/sdbd/public.pem 前后 SHA-256 比较相同；提权过程的覆盖挂载仅存在于私有命名空间。
- 上游校验 staging_cleaned=true；随后本地适配器的命令去重临时目录清理完毕，主机脚本正常退出。
- root agent 已关闭。这是一次成功的临时会话，不代表日常 SDB 已自动成为 root，也未设置开机持久化。
- 未禁用 UEP，未修改工程菜单，未刷写固件或分区，未执行固件解密。

证据：temporary-root-result.json。复现入口：verify-temporary-root.py。构建产物：root-payloads31/。下面的前期判断是该次验证前的研究记录；“root 尚未取得”已被本节结果更新，跨区强刷仍未得到验证。

## 实机诊断结果

通过已启用的开发者 SDB，利用公开的包名命令注入方式，仅执行 id、uname、getcap、目录查询、readlink 与 tar 帮助查询。未上传 root 载荷，未操作分区、工程菜单、固件或开机持久化。

- 命令执行身份：uid=901(sdk)、gid=901(sdk)，SMACK context=System；不是 root。
- 内核：5.4.77 armv7l。
- /usr/bin/dotnet：cap_setgid,cap_sys_admin+ei。
- /usr/sbin/sdbd-tarlauncher：cap_setgid,cap_setuid+eip。
- /usr/bin/tar 支持 --to-command。
- /usr/share/dotnet/shared/Microsoft.NETCore.App/ 存在 3.1.3，netcoreapp 链接指向该版本。
- dotnet --list-runtimes 不受支持；公开主项目的直接前置检查会在这里停止，需要采用目录枚举兼容方式。
- /dev/sdp_pqe_fdet 存在，权限 crw-rw-rw-；没有打开、映射或读写该设备，不能据此断定内核漏洞可用。

原始输出：root-prerequisites.txt。

## 候选路线

1. archive-root：SDB 命令执行 → 具备 capability 的 .NET → 私有挂载命名空间 → 三星归档启动器。当前已核对到的关键静态前置条件相符，但未验证载荷执行、命名空间操作、SMACK 限制或 UID 0。
2. QN90B 内核路线：相关设备节点存在，但该路线涉及物理内存映射与内核凭据写入，不能直接套用其他电视的 RAM 范围、偏移或 UEP 地址。优先研究 archive-root。

主项目源码仅下载到本地供审阅，提交 4ad2c4d3b0d0e0da4b5b7ebe4a787e94596f416b，未运行其 probe/root 命令。注意 archive-root probe 实际会上传并执行提权载荷，并非单纯只读兼容性检查。

## 对强刷的判断

root 尚未取得；强刷海外固件尚未证实可行。root、UEP、固件解密、升级兼容性校验和安全启动是不同边界。该公开项目提供 root 和固件分析工具，没有为 M80B 提供经过验证的跨区刷写、恢复或降级流程。提取 AES 解密材料不等于取得厂商签名私钥。香港官方已签名包是否被国行接受，也必须单独验证。

在考虑任何固件或分区写入前，需要明确原机存储布局、可读取的备份范围、设备专属数据位置、升级校验逻辑，以及无需正常系统启动的恢复途径。当前诊断不能保证这些条件已满足。

## 原始研究来源

- Bishop Fox SDB 命令注入披露：https://bishopfox.com/blog/samsung-tizen-os-version-through-9-0
- root 主项目：https://github.com/chris-ritsen/samsung-tv-root
- 主项目 archive-root 实现：https://github.com/chris-ritsen/samsung-tv-root/blob/master/src/samsung_tv_root/archive_root.py
- Q60B Tizen 6.5 的独立复现与 .NET 枚举兼容记录：https://github.com/chris-ritsen/samsung-tv-root/issues/1
- 固件解密研究：https://github.com/chris-ritsen/samsung-tv-root/blob/master/docs/research-notes/AES_EXTRACTION.md

来源的作者测试记录不能替代本机验证；未发现本型号和本固件组合的公开成功证明。
