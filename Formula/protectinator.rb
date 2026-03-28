class Protectinator < Formula
  desc "Portable, zero-config security monitoring tool"
  homepage "https://github.com/erewhon/protectinator"
  version "2026.3.28"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/erewhon/protectinator/releases/download/v2026.3.28/protectinator-macos-arm64"
      sha256 "ac7407c71ceeda3490bbdd69df07a1f7b4f09eae4172e3308a29d9d557594451"
    end

    on_intel do
      url "https://github.com/erewhon/protectinator/releases/download/v2026.3.28/protectinator-macos-x86_64"
      sha256 "dee806c631434480a69c4651f0b9f13eccf2e4b3dab525b9104b5cee98b20b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/erewhon/protectinator/releases/download/v2026.3.28/protectinator-linux-arm64"
      sha256 "3871e95643acf96284c6321b8df24548b601230f668015bc295dbdb94320b82e"
    end

    on_intel do
      url "https://github.com/erewhon/protectinator/releases/download/v2026.3.28/protectinator-linux-x86_64"
      sha256 "935c8adeda4a4e6f32eee52cfe8979526a3979e280bc14ab5cfd0c1874ce359f"
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
