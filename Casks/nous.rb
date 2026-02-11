cask "nous" do
  version "2026.2.6"
  sha256 "4728c27963e0d25951be929eceef06ccfa196ca7d4428652d3696feb7ffe5853"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.6/Nous_2026.2.6_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
