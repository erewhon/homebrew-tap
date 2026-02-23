cask "nous" do
  version "2026.2.23"
  sha256 "c5fc6cdcf0622f77d96cf8e76ae7ad96a07d93b8ee760d4c3199d17edd7e2ff7"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.23/Nous_2026.2.0_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
