# 1.0.43

更新安装防卡死硬化：

- 暂存目录统一主程序名为运行中的小笔记本.exe（NormalizeStagedMainExe）
- 安装失败写 _更新/安装失败.txt 并将 version.txt 拉回本机版本，停止空转
- 更安全的主程序 copy 替换（失败则启动旧版）
- 外层误落的 MiniNotebook_*.exe 自动挪进 _build
- 远程出现更高版本时清除失败标记，允许再次安装
