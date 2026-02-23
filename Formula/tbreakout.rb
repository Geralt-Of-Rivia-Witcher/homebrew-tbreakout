class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.70"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.70/tbreakout-darwin-arm64"
      sha256 "a9268d52d8dfcb4a92dad8ad7faf2d3083e162ad1af9a2e99a5337341907991a"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.70/tbreakout-darwin-amd64"
      sha256 "896b83d071c34ddb7524a539ace72b4e3455c4e59a3533d82633e6e6423f4449"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
