cask "nous" do
  version "2026.2.4"
  sha256 "c098df90911a4db28122e3229664e21447321264d141318e969f8a7c10e4537f"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.4/Nous_2026.2.4_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
