class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.66/tbreakout-darwin-arm64"
      sha256 "4ae1a40a68f132881a3f37166e5aba7ec9874cf9bc86ae47f16830355a804e57"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.66/tbreakout-darwin-amd64"
      sha256 "94b78c2b99694dc459da7632794349819cadbc3a8d0d82e3f7f43a1ed39af8ba"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
