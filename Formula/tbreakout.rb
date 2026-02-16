class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.4-test3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.4-test3/tbreakout-darwin-arm64"
      sha256 "6802ef640ff1a6da888b183d9ead1d0bdfc06f99dc391c5779ede45ed809bd45"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.4-test3/tbreakout-darwin-amd64"
      sha256 "a05e16202f15b4be8fabae8082732ce9e61239245666fd367a7d8be2a589f67e"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
