class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.10.0/ravi-cc-0.10.0-darwin-arm64.tar.gz"
      sha256 "08f6f3d51f1df218e423e53023f72d1af8e0a6daf568833de2e595c73d0e0550"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.10.0/ravi-cc-0.10.0-darwin-amd64.tar.gz"
      sha256 "5248ee75bd243b49fc23f925c787cc76b2b338ea48cb4f870827db11ce4b19cd"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.10.0/ravi-cc-0.10.0-linux-arm64.tar.gz"
      sha256 "b20a1c7db8ff2393e5c19b554cb4fa2df9a3bd2a0aba6cad667d84442608c60d"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.10.0/ravi-cc-0.10.0-linux-amd64.tar.gz"
      sha256 "eafaf493ac1e6624cecfa916a6087823d39a21f722c47752d4b8c14ba5820a02"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
