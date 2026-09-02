cask "turkfuk" do
  version "0.1.0-beta"
  sha256 "d8cbb23cdc58792dadd7a9294f6e107ffb2759f2ef27891144472696bf0d8e89"

  url "https://github.com/Degisik/Turkfuk/releases/download/v#{version}/Turkfuk-#{version}.dmg"
  name "Turkfuk"
  desc "Turkish Keylayout for US Keylayouts"
  homepage "https://github.com/Degisik/Turkfuk"

  depends_on macos: :ventura

  app "Turkfuk.app"

  uninstall quit: "com.degisik.turkfuk"

  zap trash: [
    "~/Library/Preferences/com.degisik.turkfuk.plist",
  ]

  caveats <<~EOS
    Turkfuk Apple tarafından notarize edilmedi. Homebrew indirilen dosyayı
    karantinaya aldığı için ilk açılışta engellenebilir. İki yoldan biri:

      brew install --cask --no-quarantine turkfuk

    ya da kurulumdan sonra:

      xattr -dr com.apple.quarantine /Applications/Turkfuk.app

    Ayrıca tuşları yakalayabilmesi için erişilebilirlik izni gerekiyor:
    Sistem Ayarları > Gizlilik ve Güvenlik > Erişilebilirlik > Turkfuk
  EOS
end
