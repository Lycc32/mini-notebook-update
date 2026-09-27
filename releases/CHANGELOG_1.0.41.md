# 1.0.41

## 变更摘要

- **开屏重做（品牌极简）**：纯色 slate 暗幕（~#0f172a）→ 居中字标 EaseOutCubic 淡入（约 0.6s，TextRenderer + 缓存字体）→ 「欢迎使用」错峰淡入 → **延迟 ~0.45s 出现的 CSS 风格旋转细环**（整圈低透明轨道 + ~110° 强调弧，约 1.35 转/秒，DrawArc）→ 顶发丝 2px 进度条；末约 0.4s 整体淡出。欢迎总时长约 **3.0s**。去掉 PathGradientBrush 柔光、ScaleTransform、每帧 new Font、发丝下划线扫过。
- **更新进度相位**：与欢迎同语汇——纯色底 + 标题/说明 + 旋转细环 + 细进度条；无柔光圆标。
- **拖宽流畅**：拖动中仅 `ApplyPanelWidthShellOnly`（大面板 Width/Left，`ResumeLayout(false)`）；**禁止** LayoutQuickPage / Filter / Footer / ComposerFields / 圆角 / 60ms 中等回流；松手再 `ApplyPanelWidthLayout(true)` + PlaceAtTopCenter + ApplyRoundRegion。

## 兼容说明

- 更新检查开屏路径保留；欢迎略短于 1.0.40 的 4s。
- 外层 `小笔记本.exe` 不被本版构建覆盖；产物仅写入 `_build\MiniNotebook_1.0.41.exe`。
