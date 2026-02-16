class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.3-test"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.3-test/tbreakout-darwin-arm64"
      sha256 "e7e1c8c04659d9525153ab7ceba789c8f84dcb9536379d3644bd48d45d505ac0"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.3-test/tbreakout-darwin-amd64"
      sha256 "e7e1c8c04659d9525153ab7ceba789c8f84dcb9536379d3644bd48d45d505ac0"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
