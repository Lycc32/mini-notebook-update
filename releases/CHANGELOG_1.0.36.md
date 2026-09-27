# 小笔记本 1.0.36

- **一键拉取**改为 **Git 克隆 only**（无 HTTP 下载 UI）：设置页「一键拉取（Git）」配置仓库地址、保存到文件夹、目录名（可选），点「一键拉取」执行 `git clone`。
- 仓库地址支持 `ssh://…`、`git@host:path`，亦可粘贴 `https://…git`；任意字符串原样传给 `git clone`（使用本机 SSH agent / 密钥，无黑框）。
- 目录名留空则取仓库地址最后一段并去掉 `.git`；非法 Windows 字符会替换；目标文件夹已存在则失败（不覆盖）。
- 自动查找 `git.exe`（`where git` 或常见 Git for Windows 路径）；超时约 10 分钟；失败时状态栏显示 stderr 尾部。
- 快捷页顶栏 **拉取** 按钮沿用已保存配置；未配置时提示并跳转设置。
- settings.json 字段名保持兼容：`PullUrl` / `PullFolder` / `PullFileName` / `PullLastResult`（语义为 Git 仓库 / 父目录 / 克隆目录名）。
