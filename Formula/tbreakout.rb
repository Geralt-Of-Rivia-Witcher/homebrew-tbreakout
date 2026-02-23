class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.61"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.61/tbreakout-darwin-arm64"
      sha256 "9650439a884e79ee45ffd36c702eaa03fcb03622abdeba3ca4974fde17e8e581"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.61/tbreakout-darwin-amd64"
      sha256 "f6c92b5c3b7bc333e02c21648e1572c024211f545f5410512ec9c16a22a68fa1"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
