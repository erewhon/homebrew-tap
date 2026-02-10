cask "nous" do
  version "2026.2.2"
  sha256 "a8b2a981799023c051c4c3889685e87871011c1407187c806bed869bde207d8d"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.2/Nous_2026.2.2_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
