class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.64/tbreakout-darwin-arm64"
      sha256 "b71b38f69b1db65db686c116fa51411f4dda979082fb863963b89bca91cda68e"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.64/tbreakout-darwin-amd64"
      sha256 "153af54aef2a8756bf634f608e4b1d83a7c471fb259fb9bc0633d5a115e93216"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
