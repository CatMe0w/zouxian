# zouxian 走线

Apple 限制在国行 Mac 上使用 Apple Intelligence 和 Xcode LLM（Predictive Code Completion）。如果你使用在中国购买的 Mac，即使你不在中国，你也无法使用 Apple Intelligence 和 Xcode Predictive Code Completion。

如果你不幸处于这种情况，现在是时候让你的 Mac 踏上 _[走线](https://en.wikipedia.org/wiki/Zouxian_(phenomenon))_ 之路了。

---

可在重启后保持的方案，基于 [Cyandev 的指南](https://gist.github.com/unixzii/6f25be1842399022e16ad6477a304286)。

## 系统版本

| From                   | To             |                                                                                                        |
| ---------------------- | -------------- | ------------------------------------------------------------------------------------------------------ |
| Macintosh System 1     | 14.6 (23G80)   | 不适用                                                                                                 |
| 15.0 Beta 1 (24A5264n) | 15.3.1 (24D70) | 安装 [Darwin Eligibility Override](https://github.com/CatMe0w/zouxian/blob/master/repatriate_guide.md) |
| 15.4 Beta 1 (24E5206s) | ?              | 安装 zouxian                                                                                           |

## 免责声明

禁用 SIP 会降低系统安全性，并且会使 App Store 中的 iOS app 与 Apple Pay 无法使用。

## 安装

### 前提条件

- 禁用 SIP 调试限制（在恢复模式下运行 `csrutil enable --without debug` 命令）。
- 对于 Apple Intelligence：登录非国区 Apple ID，地区设置为美国，语言设置为英语（美国）。
- 对于 Xcode Predictive Code Completion：安装 Xcode 并至少运行一次。

> [!NOTE]  
> 如果只想使用 Apple Intelligence，无需安装 Xcode。

### 方法一：通过 [Homebrew](https://brew.sh)

```shell
brew install catme0w/tap/zouxian
sudo brew services start zouxian
```

> 如果你感兴趣，在此查看 [Formula](https://github.com/CatMe0w/homebrew-tap/blob/master/Formula/zouxian.rb)

### 方法二：手动

```shell
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/zouxian.sh -o /usr/local/bin/zouxian
sudo chmod +x /usr/local/bin/zouxian
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/cat.me0w.zouxian.plist -o /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo launchctl load -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
```

## 卸载

### 若通过 [Homebrew](https://brew.sh) 安装

```shell
sudo brew services stop zouxian
sudo rm -rf /opt/homebrew/Cellar/zouxian
brew untap catme0w/tap
```

### 若手动安装

```shell
sudo launchctl unload -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /usr/local/bin/zouxian
```

## 感谢

感谢使得这一切成为可能的人们：[Kyle-Ye](https://github.com/Kyle-Ye)、[Cyandev](https://twitter.com/unixzii)、[Lakr233](https://twitter.com/Lakr233)、[Sou1gh0st](https://twitter.com/Sou1gh0st)、Yuriko。

## 许可证

MIT License
