# zouxian 走线

Apple 限制在国行 Mac 上使用 Apple Intelligence 和 Xcode LLM（Predictive Code Completion）。如果你使用在中国购买的 Mac，即使你不在中国，你也无法使用 Apple Intelligence 和 Xcode Predictive Code Completion。

如果你不幸处于这种情况，现在是时候让你的 Mac 踏上 _[走线](https://en.wikipedia.org/wiki/Zouxian_(phenomenon))_ 之路了。

---

可在重启后保持的方案，基于 [Cyandev 的指南](https://gist.github.com/unixzii/6f25be1842399022e16ad6477a304286) 。

## 系统版本

### Apple Intelligence

| From                   | To                     |                                  |
| ---------------------- | ---------------------- | -------------------------------- |
| Macintosh System 1     | 15.0 Beta 4 (24A5298h) | 无 Apple Intelligence            |
| 15.1 Beta 1 (24B5009l) | 15.1 Beta 1 (24B5009l) | 可用（需要 `zouxian` >= v0.2.0） |

### Xcode LLM (Xcode Predictive Code Completion)

| From                   | To                     |              |
| ---------------------- | ---------------------- | ------------ |
| Macintosh System 1     | 14.6 (23G80)           | 无 Xcode LLM |
| 15.0 Beta 1 (24A5264n) | 15.1 Beta 1 (24B5009l) | 可用         |

## 前提条件

- 禁用 SIP 调试限制（在恢复模式下运行 `csrutil enable --without debug` 命令）。
- 对于 Apple Intelligence：登录非国区 Apple ID，地区设置为美国，语言设置为英语（美国）。
- 对于 Xcode Predictive Code Completion：安装 Xcode 并至少运行一次。

> [!NOTE]  
> 如果只想使用 Apple Intelligence，无需安装 Xcode。

## 免责声明

禁用 SIP 可能会产生未知影响。**请谨慎使用。**

## 安装

### 通过 [Homebrew](https://brew.sh)

```shell
brew install catme0w/tap/zouxian
sudo brew services start zouxian
```

> 如果你感兴趣，在此查看 [Formula](https://github.com/CatMe0w/homebrew-tap/blob/master/Formula/zouxian.rb)

### 手动

```shell
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/zouxian.sh -o /usr/local/bin/zouxian
sudo chmod +x /usr/local/bin/zouxian
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/cat.me0w.zouxian.plist -o /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo launchctl load -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
```

## 卸载

### 通过 [Homebrew](https://brew.sh)

```shell
sudo brew services stop zouxian
sudo rm -rf /opt/homebrew/Cellar/zouxian
brew untap catme0w/tap
```

### 手动

```shell
sudo launchctl unload -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /usr/local/bin/zouxian
```

## 感谢

感谢使得这一切成为可能的人们：[Cyandev](https://twitter.com/unixzii)、[Lakr233](https://twitter.com/Lakr233)、[Sou1gh0st](https://twitter.com/Sou1gh0st)、Yuriko。

## 许可证

MIT License
