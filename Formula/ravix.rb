class Ravix < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravix"
  version "0.27.1"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravix/v0.27.1/ravix-0.27.1-darwin-arm64.tar.gz"
      sha256 "ea595629e84bed29507b72bee728a9fdaf7b2299a8615e4e80edfb90c0aa449f"
    end
    on_intel do
      url "https://downloads.ravi.id/ravix/v0.27.1/ravix-0.27.1-darwin-amd64.tar.gz"
      sha256 "c79f8eb4b93682c6449c5570019f6ca2e7f8cbf22c05349d24fc7dd5f16e99c5"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravix/v0.27.1/ravix-0.27.1-linux-arm64.tar.gz"
      sha256 "79edd9c39228dbbc5677696b30febfb78b1c1923ef9d19d6e7030668e04f1bf9"
    end
    on_intel do
      url "https://downloads.ravi.id/ravix/v0.27.1/ravix-0.27.1-linux-amd64.tar.gz"
      sha256 "7121ce11a93151610459b8d21602874e8f3c3d30deb0bba1fe3c4e84a72af2ef"
    end
  end

  def install
    bin.install "ravix"
  end

  test do
    assert_match "ravix", shell_output("#{bin}/ravix --version")
  end
end
