class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.68/tbreakout-darwin-arm64"
      sha256 "2500b98fd2f9deeb3304454a8fb38c9179c8cf98b778bb0d6c28977097f3ddc2"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.68/tbreakout-darwin-amd64"
      sha256 "1b9e72eec72475cd9989e4cba6d5ef839de2e4f6b38464472409def8c625628b"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
