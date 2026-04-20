class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.21.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.21.0/ravi-cc-0.21.0-darwin-arm64.tar.gz"
      sha256 "cedd3adeb99b68b75d5e2e57fa81fe364dfbeec632c817f35ac9b0e6b0cb3723"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.21.0/ravi-cc-0.21.0-darwin-amd64.tar.gz"
      sha256 "c5e8310713d9195205700a89232044e6b4898b5e5704d5587f5161cf625e98ea"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.21.0/ravi-cc-0.21.0-linux-arm64.tar.gz"
      sha256 "d4508d0feabcc0e39749b06ec34fa21a258780528dfced28d5e5cabb3851ab78"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.21.0/ravi-cc-0.21.0-linux-amd64.tar.gz"
      sha256 "0096f9fd95a7a38fb5d15d847c6f0a9f499a0d349af0634c5e77300521b9d139"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
