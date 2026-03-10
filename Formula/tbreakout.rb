class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.9/tbreakout-darwin-arm64"
      sha256 "70371d7df0a682cb1b05200689d1bdbc89b45b14efbe7cb42a9d8d54f9813ed1"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.9/tbreakout-darwin-amd64"
      sha256 "865886aad52342cb51af85e5254f432f3d10b7bdb609e4f873e46a8fb4f737a0"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
