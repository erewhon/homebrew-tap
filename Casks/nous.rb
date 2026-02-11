cask "nous" do
  version "2026.2.8"
  sha256 "c0746dbdb42212426e2219a72bc27abe075701843a38e827fac7196017a6eee2"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.8/Nous_2026.2.8_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
