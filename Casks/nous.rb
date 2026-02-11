cask "nous" do
  version "2026.2.7"
  sha256 "f8500d06207d77fa91468f5de1d1b8820ca6ceadf184f77f87fccd9d5e7c999a"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.7/Nous_2026.2.7_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
