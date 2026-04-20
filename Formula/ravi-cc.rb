class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.17.0/ravi-cc-0.17.0-darwin-arm64.tar.gz"
      sha256 "21bb2adbb0e39fc9847e3d6819c4e1052afaf950672553db47f1b4068bf1e015"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.17.0/ravi-cc-0.17.0-darwin-amd64.tar.gz"
      sha256 "6306b5f344151b440555c2d1b8959e0bdc9aaf1b5c020565bf5e3939690b0092"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.17.0/ravi-cc-0.17.0-linux-arm64.tar.gz"
      sha256 "0a2aef98d719e29a06c98604dfb5bd52eb9ead24976405044de76119bdb93e87"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.17.0/ravi-cc-0.17.0-linux-amd64.tar.gz"
      sha256 "63fdce2e75fd4f3106b76eba5ee719433ce7733b532561eabd7cd37a9a3d3e48"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
