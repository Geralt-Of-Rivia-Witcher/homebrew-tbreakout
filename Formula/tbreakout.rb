class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.5-test2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.5-test2/tbreakout-darwin-arm64"
      sha256 "4733bcde090e552ea8270922cc69031be191346cd905261a8538c614b2370cb5"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.5-test2/tbreakout-darwin-amd64"
      sha256 "d27297cadbeb28a2da8a19356956c66debd7b76de80e793e1c38762baa079dee"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
