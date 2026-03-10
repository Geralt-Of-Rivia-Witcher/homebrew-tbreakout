class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.81-test2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.81-test2/tbreakout-darwin-arm64"
      sha256 "34297314f4e0c05d4c82b882a1c33a8267e45c3c1be90a6e90bff068412bf100"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.81-test2/tbreakout-darwin-amd64"
      sha256 "949c964eac7545be5ebadbad3dbf3cff85bcf47409d3f1b51a0f6b80b90c9fae"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
