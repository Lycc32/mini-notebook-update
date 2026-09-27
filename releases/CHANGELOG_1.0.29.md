# 小笔记本 1.0.29

- 设置「检查更新」按钮可见性：PrimarySoft 填充 + PrimaryLight 文字 + 淡描边，宽≥72，BringToFront；about 固定在按钮行下方，避免盖住。
- 欢迎动画更丝滑（约 3.5s）：点→拖尾长条(20–60px)→二次贝塞尔飞入中心球；cubic ease-out 错峰；多层柔光同心圆；球心百分比跟平滑进度；关自动更新也完整播。
- 待办时间可点选：录入栏与详情页点击时间中间弹出深色时分网格（小时 0–23、分钟 5 分步进），左右 ±5 仍保留。
- 快捷页支持文件夹 + 软件：QuickItems（`F|path` / `A|path`，`||` 分隔）兼容旧 QuickFolders；可拖入文件夹/.exe/.lnk；「添加文件夹」「添加软件」按钮。
- 快捷页一键息屏：SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, 2)，不退出程序。
