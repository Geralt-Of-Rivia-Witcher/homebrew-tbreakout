class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.82"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.82/tbreakout-darwin-arm64"
      sha256 "27fc4cfb5eb7b1c0761ac1d63941d590f40e442207c68ea53df181953ad66ecf"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.82/tbreakout-darwin-amd64"
      sha256 "dbc973b4c9710bb21acec8a240f8f8a2d8bff26c101505cab9c979087ab7fc16"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
