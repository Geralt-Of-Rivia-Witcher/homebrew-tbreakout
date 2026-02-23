class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.67/tbreakout-darwin-arm64"
      sha256 "dcda24d09cb392ce3d4eeaab6deda2f3c0d07ec6abdb594392222edbd72e0e04"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.67/tbreakout-darwin-amd64"
      sha256 "cd6136f15013b5441e5d07744cedb2dcbc809ab87727837b85886d08d5b15e28"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
