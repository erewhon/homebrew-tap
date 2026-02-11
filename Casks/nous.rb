cask "nous" do
  version "2026.2.5"
  sha256 "8bb2e1dc1541093e3abc20d23a322b870f0f52fc4268b2aa86020bf28139016c"

  url "https://github.com/erewhon/nous/releases/download/v2026.2.5/Nous_2026.2.5_aarch64.dmg"
  name "Nous"
  desc "Personal notebook and data organization tool"
  homepage "https://github.com/erewhon/nous"

  app "Nous.app"

  zap trash: [
    "~/.local/share/nous",
    "~/.local/share/com.nous.app",
  ]
end
