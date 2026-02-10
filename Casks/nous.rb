cask "nous" do
  version "2026.2.3"
  sha256 "bec5e3d05d0889d59f8d6f8b874a7e1af0ef2b6b90f39bfc89589eff1230fe39"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.3/Nous_2026.2.3_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
