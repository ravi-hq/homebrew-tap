class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.8.0/ravi-cc-0.8.0-darwin-arm64.tar.gz"
      sha256 "cc9c345e7aee1071d9328966b72c2f7f91e4f10ce72ca223105bf29722c88bbd"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.8.0/ravi-cc-0.8.0-darwin-amd64.tar.gz"
      sha256 "d64c679add87061db0035b016b8576ca2557fc95e20095ca991f305f05f73312"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.8.0/ravi-cc-0.8.0-linux-arm64.tar.gz"
      sha256 "194827368ed42987c14e18fe7f8356b0644282f18a2302e13f01a22831bbbbd0"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.8.0/ravi-cc-0.8.0-linux-amd64.tar.gz"
      sha256 "bd5fc9d84dca21ea236c1d9d3c553321532712fc25262f38c17d66e01417ad27"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
