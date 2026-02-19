class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.6/tbreakout-darwin-arm64"
      sha256 "981110dbdd86af6739afa5a62dcf06b6bccfe2f88c4aef32aa2b1783e467357c"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.6/tbreakout-darwin-amd64"
      sha256 "0fff1be256e1d54bc776440beb7700f47f9bbf2d2f26ed1a4fd9d8044c886fc4"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
