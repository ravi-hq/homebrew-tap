class Ravix < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravix"
  version "0.27.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravix/v0.27.0/ravix-0.27.0-darwin-arm64.tar.gz"
      sha256 "16c4d17f83ea035f8486ee7e24732c4a0b9987d25c982cdb16d190c9c62a2d5d"
    end
    on_intel do
      url "https://downloads.ravi.id/ravix/v0.27.0/ravix-0.27.0-darwin-amd64.tar.gz"
      sha256 "39ab406a834586e781f18529f0519cd15d0bb5c2a0d7a0dcb33238049011c060"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravix/v0.27.0/ravix-0.27.0-linux-arm64.tar.gz"
      sha256 "b6e5ea1548397731a00404ce9376fbd6d26354fd839b04d88e80984beeea76fe"
    end
    on_intel do
      url "https://downloads.ravi.id/ravix/v0.27.0/ravix-0.27.0-linux-amd64.tar.gz"
      sha256 "2cfd37d071e636e15d688dd619ba49fb14386ec6b51ba1fda06a8467f665309a"
    end
  end

  def install
    bin.install "ravix"
  end

  test do
    assert_match "ravix", shell_output("#{bin}/ravix --version")
  end
end
