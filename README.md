# homebrew-turkfuk

Homebrew tap for [Turkfuk](https://github.com/Degisik/Turkfuk) — Turkish Keylayout for
US Keylayouts.

```bash
brew tap Degisik/turkfuk
brew trust degisik/turkfuk
brew install --cask --no-quarantine turkfuk
```

**Why the extra flags.** `brew trust` is required because Homebrew refuses to load casks
from third-party taps unless you explicitly trust them. `--no-quarantine` is needed
because the app is not notarized by Apple; without it Gatekeeper blocks the first launch
and you have to allow the app from System Settings → Privacy & Security.

After installing, grant accessibility permission:
System Settings → Privacy & Security → Accessibility → Turkfuk.

---

## Türkçe

[Turkfuk](https://github.com/Degisik/Turkfuk) için Homebrew tap'i.

```bash
brew tap Degisik/turkfuk
brew trust degisik/turkfuk
brew install --cask --no-quarantine turkfuk
```

**Ek bayraklar neden gerekli.** `brew trust`, Homebrew üçüncü taraf tap'lerden cask
yüklemeyi açık izin olmadan reddettiği için gerekiyor. `--no-quarantine` ise uygulama
Apple tarafından notarize edilmediği için; onsuz kurarsan Gatekeeper ilk açılışta
engeller ve Sistem Ayarları → Gizlilik ve Güvenlik altından elle izin vermen gerekir.

Kurulumdan sonra erişilebilirlik izni:
Sistem Ayarları → Gizlilik ve Güvenlik → Erişilebilirlik → Turkfuk.
