cask "turkfuk" do
  version "0.1.2-beta"
  sha256 "71b91a6f925e37e472eb928696698bf893d94f5ec9fc1902996db24d9f7d7c63"

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
