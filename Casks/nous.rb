cask "nous" do
  version "2026.2.23"
  sha256 "9357c7a46b83b28d3e1bf7cedd8bcad88b212ec3cd36ad83eed83d6402805655"

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
