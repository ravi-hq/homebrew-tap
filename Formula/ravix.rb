class Ravix < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravix"
  version "0.27.2"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravix/v0.27.2/ravix-0.27.2-darwin-arm64.tar.gz"
      sha256 "e93c1c6531367766000e2604982499822769b065f83a6fbbcf9ba3ea7efba156"
    end
    on_intel do
      url "https://downloads.ravi.id/ravix/v0.27.2/ravix-0.27.2-darwin-amd64.tar.gz"
      sha256 "ecb6566817adf7bdd20b9d6c811f5f142660db8056d4f317672d2bdc2e8f2219"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravix/v0.27.2/ravix-0.27.2-linux-arm64.tar.gz"
      sha256 "240785eaca2b7e4f2dd22ec7f06a409ce4d7a6ea9ceee7f43e8dc85d2f8c4034"
    end
    on_intel do
      url "https://downloads.ravi.id/ravix/v0.27.2/ravix-0.27.2-linux-amd64.tar.gz"
      sha256 "6a60bab351f186cddaefdc1cc5e50910ecd8460c2b1231b32b05430cbbd65ab2"
    end
  end

  def install
    bin.install "ravix"
  end

  test do
    assert_match "ravix", shell_output("#{bin}/ravix --version")
  end
end
