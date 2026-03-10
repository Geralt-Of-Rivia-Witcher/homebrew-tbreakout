class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.91"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.91/tbreakout-darwin-arm64"
      sha256 "c9f18a5e5058e1f4969864c5e946fbaa22b236bd8b5d372a6a810bd1e2a28b02"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.91/tbreakout-darwin-amd64"
      sha256 "a84f2227b7d8c5f6801644f3a6d13b4cd39950b6971154768bca2c4668650eac"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
