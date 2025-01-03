# zouxian is no longer recommended

中文版请见[这里](https://github.com/CatMe0w/zouxian/blob/master/README_zh.md)。

zouxian requires disabling SIP, which is not recommended for security reasons.

Thanks to [Kyle-Ye](https://github.com/Kyle-Ye), he has written a [tool](https://github.com/Kyle-Ye/eligibility) that can enable Apple Intelligence and Xcode Predictive Code Completion without disabling SIP.

Please follow the instructions [here](https://github.com/CatMe0w/zouxian/blob/master/repatriate_guide.md).

zouxian will not be abandoned. If Kyle-Ye's solution does not work on your device, zouxian is still an option.

(To be honest, Apple Intelligence is underwhelming, and I rarely use Mac afterwards, so I have hardly paid attention to this project. Sorry for the long wait.)

---

The rest of the README is kept for historical reasons.

---

# zouxian 走线

Apple restricted the access to Apple Intelligence and Xcode LLM (Predictive Code Completion) feature on China models of Mac. That is, if you are using a Mac bought in China, even if you are not in China, you will not be able to use Apple Intelligence or Xcode Predictive Code Completion.

If you are unfortunate to be in this situation, now it is time take your Mac on a journey of _[Zouxian](https://en.wikipedia.org/wiki/Zouxian_(phenomenon))_.

---

Persistent solution after rebooting, based on [Cyandev's guide](https://gist.github.com/unixzii/6f25be1842399022e16ad6477a304286).

## Version table

> This table is no longer updated.

### Apple Intelligence

| From                   | To                     |                                          |
| ---------------------- | ---------------------- | ---------------------------------------- |
| Macintosh System 1     | 15.0 Beta 4 (24A5298h) | No Apple Intelligence available          |
| 15.1 Beta 1 (24B5009l) | 15.1 Beta 1 (24B5009l) | Supported (requires `zouxian` >= v0.2.0) |

### Xcode LLM (Xcode Predictive Code Completion)

| From                   | To                     |                        |
| ---------------------- | ---------------------- | ---------------------- |
| Macintosh System 1     | 14.6 (23G80)           | No Xcode LLM available |
| 15.0 Beta 1 (24A5264n) | 15.1 Beta 1 (24B5009l) | Supported              |

## Prerequisites

- SIP debugging restrictions are disabled (via `csrutil enable --without debug` command in recovery mode).
- For Apple Intelligence: A non-China Apple ID signed in, region set to the United States, and language set to English (US).
- For Xcode Predictive Code Completion: Xcode is installed and run at least once.

> [!NOTE]  
> No need to install Xcode if you only want to use Apple Intelligence.

## Disclaimer

Disabling SIP can cause some unknown effect. **Please use with caution.**

## Install

### Via [Homebrew](https://brew.sh)

```shell
brew install catme0w/tap/zouxian
sudo brew services start zouxian
```

> Check out [the formula](https://github.com/CatMe0w/homebrew-tap/blob/master/Formula/zouxian.rb) if you're interested

### Manually

```shell
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/zouxian.sh -o /usr/local/bin/zouxian
sudo chmod +x /usr/local/bin/zouxian
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/cat.me0w.zouxian.plist -o /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo launchctl load -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
```

## Uninstall

### Via [Homebrew](https://brew.sh)

```shell
sudo brew services stop zouxian
sudo rm -rf /opt/homebrew/Cellar/zouxian
brew untap catme0w/tap
```

### Manually

```shell
sudo launchctl unload -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /usr/local/bin/zouxian
```

## Acknowledgement

Thanks for those who make this possible together: [Kyle-Ye](https://github.com/Kyle-Ye), [Cyandev](https://twitter.com/unixzii), [Lakr233](https://twitter.com/Lakr233), [Sou1gh0st](https://twitter.com/Sou1gh0st), Yuriko.

## License

MIT License
