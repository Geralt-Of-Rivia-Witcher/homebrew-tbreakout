class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.0/tbreakout-darwin-arm64"
      sha256 "b7962125935fce15b39355d5cc85bad63f5b2a1ee120c233fedbf520b4aa2f05"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.0/tbreakout-darwin-amd64"
      sha256 "5f2f373d1c4cd00e91a5d92b25df27a62623dc56cb78a07510d26d8079067ed6"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
