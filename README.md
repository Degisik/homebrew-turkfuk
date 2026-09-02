# homebrew-turkfuk

[Turkfuk](https://github.com/Degisik/Turkfuk) için Homebrew tap'i.

```bash
brew tap Degisik/turkfuk
brew install --cask --no-quarantine turkfuk
```

`--no-quarantine` gerekli çünkü uygulama Apple tarafından notarize edilmedi.
Onsuz kurarsan Gatekeeper ilk açılışta engeller; Sistem Ayarları → Gizlilik ve
Güvenlik altından elle izin vermen gerekir.
