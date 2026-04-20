class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.13.0/ravi-cc-0.13.0-darwin-arm64.tar.gz"
      sha256 "e9c29b09fc61ca7574de1a99340d4e64b5c4c64e8018e3972c28d98233c2a36a"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.13.0/ravi-cc-0.13.0-darwin-amd64.tar.gz"
      sha256 "05524e6b030a3b84c49bc47e586aa4f9fc39b6b40bb8a2e58533efd3c4180d6f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.13.0/ravi-cc-0.13.0-linux-arm64.tar.gz"
      sha256 "dbbad5e42339a602aec334a411563cc6189c407ee33e8fd8683fe4b04c579b81"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.13.0/ravi-cc-0.13.0-linux-amd64.tar.gz"
      sha256 "49ebe976846a8e49f5cf08dca5fa7110c4cfbbe69b1a5bb732347ce5e27c83ac"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
