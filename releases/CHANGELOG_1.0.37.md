# 小笔记本 1.0.37

- **一键拉取错误提示**：失败时优先展示 stderr/stdout **开头**的真实错误（约 280 字），并在 `usage:` / `git clone [` / 选项列表处截断，避免只显示帮助尾部。
- **仓库地址粘贴**：自动规范化——去首尾空白、去掉误粘贴的 `git clone ` 前缀与引号；若仍含空格则取第一个 `ssh://` / `git@` / `http(s)://` 地址。
- **FindGitExe**：`where git` 多路径时优先 `...\Git\bin\git.exe`，其次 `cmd\git.exe`（避免 cmd shim 重定向 IO 不稳）。
- **环境变量**：克隆进程设置 `GIT_TERMINAL_PROMPT=0`、`GCM_INTERACTIVE=never`，隐藏窗口下不挂起等密码，认证失败直接反映到 stderr。
