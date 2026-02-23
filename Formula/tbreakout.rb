class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.69"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.69/tbreakout-darwin-arm64"
      sha256 "f9158f31b8d932d1d32ddeecfceb7165f4fe73baa07d1edd281b45988f3dbb16"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.69/tbreakout-darwin-amd64"
      sha256 "d90fbe082ae874928cafa7b5f7a9df673bd7302756707d8064126e444796fe4f"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
