class Protectinator < Formula
  desc "Portable, zero-config security monitoring tool"
  homepage "https://github.com/erewhon/protectinator"
  version "0.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/erewhon/protectinator/releases/download/v0.5.0/protectinator-macos-arm64"
      sha256 "2febc825764cfa0a68f2c33e8a201b2de598deb899b9fa1f85eaf7c24c4cc38a"
    end

    on_intel do
      url "https://github.com/erewhon/protectinator/releases/download/v0.5.0/protectinator-macos-x86_64"
      sha256 "67699afcd23532a2f339200b160fd6aed736f0b8b5f86b087de36ee1bbe9dc7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/erewhon/protectinator/releases/download/v0.5.0/protectinator-linux-arm64"
      sha256 "03e36e5f158c2ccef472fc740d451a2a23f8d38b4e6bbe912c8edc60b316c97b"
    end

    on_intel do
      url "https://github.com/erewhon/protectinator/releases/download/v0.5.0/protectinator-linux-x86_64"
      sha256 "4a161eb264cd5a6d75c1db8d61f98e3796f9d9e85801b7e8c25b21fa0c0639c9"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "protectinator-macos-arm64" => "protectinator"
      else
        bin.install "protectinator-macos-x86_64" => "protectinator"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "protectinator-linux-arm64" => "protectinator"
      else
        bin.install "protectinator-linux-x86_64" => "protectinator"
      end
    end
  end

  test do
    assert_match "protectinator", shell_output("#{bin}/protectinator --help")
  end
end
