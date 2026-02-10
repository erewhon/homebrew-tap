cask "nous" do
  version "2026.2.1"
  sha256 "f00e7597d9f892f7c5e9b8f4edf91e670ca9bdf36e361d5c72b8bf6ee36fac2c"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.1/Nous_2026.2.1_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
