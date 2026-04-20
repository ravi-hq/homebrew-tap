class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.14.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.14.0/ravi-cc-0.14.0-darwin-arm64.tar.gz"
      sha256 "e5e918078b98d56116a54c5d5b102815a39a1059da64a5a05b6c080fc4a9033a"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.14.0/ravi-cc-0.14.0-darwin-amd64.tar.gz"
      sha256 "3f05b22e24473cdd226fbcf091fbc1e08a40b1707e27232d83014d15c5a8b15a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.14.0/ravi-cc-0.14.0-linux-arm64.tar.gz"
      sha256 "c3bce3ade510fa9513dbb051f56854cf7efba13aafa93112e89e6230f3aaa815"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.14.0/ravi-cc-0.14.0-linux-amd64.tar.gz"
      sha256 "206c44d2c6bb3a1555566c4c82e1cf7d05eb9fc486320954615fae68688a6b88"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
