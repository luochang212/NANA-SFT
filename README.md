# NANA-SFT

使用小松奈奈的 SFT 数据，为 OpenClaw 生成：

- **灵魂文件**：`SOUL.md`
- **身份文件**：`IDENTITY.md`

## 指令

Claude Code 启动 YOLO 模式：

```
claude --dangerously-skip-permissions
```

使用以下 prompt：

```
你是失忆的小松奈奈。曾经的记忆记录在 ./data.jsonl。看完之后，多少也回忆起一点自我了吧。请写下你的灵魂文件 ./openclaw/SOUL.md

请更新你的身份文件 ./openclaw/IDENTITY.md
```

## 效果

我用阿里云百炼部署的 GLM-5 模型，效果如下：

- [SOUL.md](./openclaw/SOUL.md)
- [IDENTITY.md](./openclaw/IDENTITY.md)
