# zouxian 走线

Apple restricted the access to Xcode LLM (Predictive Code Completion) feature on China models of Mac. That is, if you are using a Mac bought in China, even if you are not in China, you will not be able to use Predictive Code Completion. 

If you are unfortunate to be in this situation, now it is time take your Mac on a journey of _[Zouxian](https://en.wikipedia.org/wiki/Zouxian_(phenomenon))_.

---

Persistent solution after rebooting, based on [unixzii's guide](https://gist.github.com/unixzii/6f25be1842399022e16ad6477a304286). Verified on macOS 15.0 Beta (24A5264n), but there is no guarentee that it will always work on later macOS versions.

# Prerequisites

* Xcode is installed and run at least once.
* SIP debugging restrictions are disabled (via `csrutil enable --without debug` command in recovery mode).

# Disclaimer

Disabling SIP can cause some unknown effect. And for now, Xcode LLM is not stable and may cause kernel panics, which will lose some of your document modifications. **Please use with caution.**

# Install

```powershell
brew install catme0w/tap/zouxian
sudo brew services start zouxian
```

> Check out [the formula](https://github.com/CatMe0w/homebrew-tap/blob/main/Formula/zouxian.rb) if you're interested

# Uninstall

```powershell
sudo brew services stop zouxian
brew uninstall zouxian
```

# License

MIT License
