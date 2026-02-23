class Tbreakout < Formula
  desc "Retro terminal Breakout game written in Go using tcell"
  homepage "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout"
  version "0.1.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.62/tbreakout-darwin-arm64"
      sha256 "4406cd1e3858f001f610e56e5f4cd8d6655efd6abc5a3c5acd89cfc6a4ab91e8"
    else
      url "https://github.com/Geralt-Of-Rivia-Witcher/tbreakout/releases/download/v0.1.62/tbreakout-darwin-amd64"
      sha256 "f6f5c237dcc0c6ad8e14be33c54d28257346cc2815fe8833fbe4b4bdedd6ec5b"
    end
  end

  def install
    bin.install Dir["tbreakout-darwin-*"].first => "tbreakout"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tbreakout --version")
  end
end
