class RaviCc < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.24.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.24.0/ravi-cc-0.24.0-darwin-arm64.tar.gz"
      sha256 "b26dd26fd0975678a8582bbb15fdfc678798827af6ca8affa2c198951e2b8fba"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.24.0/ravi-cc-0.24.0-darwin-amd64.tar.gz"
      sha256 "527c02890da1a7c3672383101b02de2adf554ca4475637334c344d1a21d88cd8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.24.0/ravi-cc-0.24.0-linux-arm64.tar.gz"
      sha256 "f5bf528e9fc23e30b8e4f8039f640c2723f7e1cd159f746b44ec1ddcede9d2a7"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.24.0/ravi-cc-0.24.0-linux-amd64.tar.gz"
      sha256 "bd82f71b48982c03008313e7a2e21c865f9f99782d852e35a2bc45cbf8337968"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
