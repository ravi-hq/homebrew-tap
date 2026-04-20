class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.11.0/ravi-cc-0.11.0-darwin-arm64.tar.gz"
      sha256 "0538cff776c3544fd6f81801c6b0db6691240ce0b7de3dedae64d3f8c2cd1ec7"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.11.0/ravi-cc-0.11.0-darwin-amd64.tar.gz"
      sha256 "fab20777fb97d9dd5c7e1504c2fe674723ba3eb42c02d7fe03b6eb14f6d23ff1"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.11.0/ravi-cc-0.11.0-linux-arm64.tar.gz"
      sha256 "3c68c479d0abce23ae418cf6063df94d40b7636147f96bfc3364f7ff8dcee6f6"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.11.0/ravi-cc-0.11.0-linux-amd64.tar.gz"
      sha256 "6849dc6083f524debcb8c8ab8d62f7a1e9462249744b02b0063f116f4cff4eff"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
