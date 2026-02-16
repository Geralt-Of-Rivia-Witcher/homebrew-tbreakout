class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.4-test2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.4-test2/tbreakout-darwin-arm64"
      sha256 "03bbe9f3ad3668f2e2c9cc7001cf580e3cd7d0deb8630d620c7f1feedcb11d2e"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.4-test2/tbreakout-darwin-amd64"
      sha256 "03bbe9f3ad3668f2e2c9cc7001cf580e3cd7d0deb8630d620c7f1feedcb11d2e"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
