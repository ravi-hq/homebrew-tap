class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.7.0/ravi-cc-0.7.0-darwin-arm64.tar.gz"
      sha256 "5183eee808bce47eb8c49523c36ebd49f920a990120e8c837d7628cd414b5975"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.7.0/ravi-cc-0.7.0-darwin-amd64.tar.gz"
      sha256 "d8ae105551cf165c2eca12eee519e6cb086b76683d5c4b576fd189eb0badd4df"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.7.0/ravi-cc-0.7.0-linux-arm64.tar.gz"
      sha256 "677f3356bcd86561d030377131af04a68566385744e705a229145c3316709dcc"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.7.0/ravi-cc-0.7.0-linux-amd64.tar.gz"
      sha256 "25b8ca8632948564d50d52f9ae5411f2e1a92fbbbfce719b1434382b1742479e"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
