cask "nous" do
  version "2026.2.1"
  sha256 "6e2908331eec7cdfb371c878c9c6fd20d6afb5a9d6b67ad982d58b75b3fad28b"

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
