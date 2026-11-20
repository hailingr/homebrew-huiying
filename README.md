# 绘影 Homebrew Tap

这个 Tap 使用[绘影官网](https://screen-annotato.sooolink.cn/)的 DMG。Homebrew 根据自身运行架构选择 Apple 芯片版或 Intel 版，并校验相应的 SHA-256。Apple 芯片 Mac 使用原生 arm64 的 Homebrew 时安装 arm64 版。

## 安装

```sh
brew tap hailingr/huiying
brew install --cask hailingr/huiying/huiying
```

Homebrew 如要求信任，确认来源是 `hailingr/homebrew-huiying` 后，可运行 `brew trust --cask hailingr/huiying/huiying`，再执行安装命令。

Homebrew 安装沿用官网 DMG 的签名和公证状态。v1.2.1 首次打开如果提示无法验证开发者，确认来源和摘要后，可在「系统设置 → 隐私与安全性」为绘影选择「仍要打开」。[Apple 首次打开说明](https://support.apple.com/zh-cn/102445)

## 升级

```sh
brew update && brew upgrade --cask hailingr/huiying/huiying
```

官网发布新版后，维护者需要更新 Cask 的 `version` 和两份 DMG 的 `sha256`，再提交到 Tap 仓库。

## 本地验收

以下命令使用以本目录为根的本地 Git 仓库。安装位置为隔离目录，便于保留已有安装。

```sh
brew tap huiying/local /absolute/path/to/homebrew-huiying
brew trust --cask huiying/local/huiying
brew fetch --cask --arch=arm huiying/local/huiying
brew fetch --cask --arch=intel huiying/local/huiying
brew install --cask --appdir="$PWD/qa-apps" huiying/local/huiying
open "$PWD/qa-apps/绘影.app"
```

两条 `brew fetch` 检查各自 DMG 的下载和摘要。安装与启动按当前 Mac 的架构验收。
