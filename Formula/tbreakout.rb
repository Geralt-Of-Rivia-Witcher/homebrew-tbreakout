class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.63/tbreakout-darwin-arm64"
      sha256 "5c4206b12cc16cf04b778f7187c33fa42114a2759cd2eedbb0c2985f2ddd536d"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.63/tbreakout-darwin-amd64"
      sha256 "cde069b7184300562fa4a3d4e2f1d0210c70719a79d37c8ed2bf19ba2cfc38ac"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
