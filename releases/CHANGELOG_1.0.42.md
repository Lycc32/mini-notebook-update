# 1.0.42

## 变更摘要

- **拖宽跟手实时排版（修复 1.0.41 错版）**：拖动中 `ApplyPanelWidthLayoutLive`（≈12–16ms 节流）——宽度与可见内容**同时**回流（list / projectBar / todoEmpty、LayoutTodoFilterRow、composer + LayoutComposerFields、LayoutTodoFooter；quick 页 LayoutQuickPage；ot 页宽度与录入；settings 仅跟宽，松手再 LayoutSettingsPageWidth）。**禁止**拖动中 ApplyRoundRegion / SaveSettings / PlaceAtTopCenter / Invalidate(true)。松手再完整 `ApplyPanelWidthLayout(true)` + 圆角 + 居中 + 刷新。
- **去掉 ShellOnly / 双栈**：不再使用「仅外壳跟宽、松手再全排」；亦无 UltraLight+Light 双路径。
- **开屏保留 1.0.41 品牌极简**：纯色 slate、缓存字体、旋转细环（无 PathGradientBrush / ScaleTransform）。

## 兼容说明

- 外层 `小笔记本.exe` 不被本版构建覆盖；产物仅写入 `_build\MiniNotebook_1.0.42.exe`。
