class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.65/tbreakout-darwin-arm64"
      sha256 "478324b80e634a8d4e45d2ff9090af06dfc7abc778c8614f796806b65f59f3c2"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.65/tbreakout-darwin-amd64"
      sha256 "967b22815959bc48474a0e403c772dd2de958fcfdfb5ba69d57dc00fd38a591d"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
