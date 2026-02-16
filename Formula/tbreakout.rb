class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.5/tbreakout-darwin-arm64"
      sha256 "c30e336e8c375e568db52092e19c027182a39ba1eebe072ede0854836f6f1008"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.5/tbreakout-darwin-amd64"
      sha256 "0a1934694a470b4a23b3d599e17b3fa2f0790f3e816a7f72b1bbd6b373f951d3"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
