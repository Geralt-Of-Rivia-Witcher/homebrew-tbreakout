class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.8/tbreakout-darwin-arm64"
      sha256 "e50fdd34ead0b3c893752e40984671110af1ea810d73a7fdf4f4d0b16e9f2dd4"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.8/tbreakout-darwin-amd64"
      sha256 "297b422f31781f8d7f94f1c538d077abdd507306a62cd3a1e3beab96e6cbe50c"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
