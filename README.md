# zouxian 走线

Apple restricted the access to Xcode LLM (Predictive Code Completion) feature on China models of Mac. That is, if you are using a Mac bought in China, even if you are not in China, you will not be able to use Predictive Code Completion. 

If you are unfortunate to be in this situation, now it is time take your Mac on a journey of _[Zouxian](https://en.wikipedia.org/wiki/Zouxian_(phenomenon))_.

---

Persistent solution after rebooting, based on [Cyandev's guide](https://gist.github.com/unixzii/6f25be1842399022e16ad6477a304286).

## Version table

|From|To||
|-|-|-|
|Macintosh System 1|14.6 (23G80)|No Xcode LLM available|
|15.0 Beta 1 (24A5264n)|15.0 Beta 4 (24A5298h)|Supported|

## Prerequisites

* Xcode is installed and run at least once.
* SIP debugging restrictions are disabled (via `csrutil enable --without debug` command in recovery mode).

## Disclaimer

Disabling SIP can cause some unknown effect. And for now, Xcode LLM is not stable and may cause kernel panics, which will lose some of your document modifications. **Please use with caution.**

## Install

### Via [Homebrew](https://brew.sh)

```powershell
brew install catme0w/tap/zouxian
sudo brew services start zouxian
```

> Check out [the formula](https://github.com/CatMe0w/homebrew-tap/blob/master/Formula/zouxian.rb) if you're interested

### Manually

```powershell
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/zouxian.sh -o /usr/local/bin/zouxian
sudo chmod +x /usr/local/bin/zouxian
sudo curl https://raw.githubusercontent.com/CatMe0w/zouxian/master/cat.me0w.zouxian.plist -o /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo launchctl load -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
```

## Uninstall

### Via [Homebrew](https://brew.sh)

```powershell
sudo brew services stop zouxian
sudo rm -rf /opt/homebrew/Cellar/zouxian
brew untap catme0w/tap
```

### Manually

```powershell
sudo launchctl unload -w /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /Library/LaunchDaemons/cat.me0w.zouxian.plist
sudo rm /usr/local/bin/zouxian
```

## Acknowledgement

Thanks for those who make this possible together: [Cyandev](https://twitter.com/unixzii), [Lakr233](https://twitter.com/Lakr233), [Sou1gh0st](https://twitter.com/Sou1gh0st), Yuriko.

## License

MIT License
