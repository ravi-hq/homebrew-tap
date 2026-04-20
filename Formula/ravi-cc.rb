class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.6.0/ravi-cc-0.6.0-darwin-arm64.tar.gz"
      sha256 "73565ff13330b25c820dcc501d73443553ef202af9277cd8d4d62cc2ed017489"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.6.0/ravi-cc-0.6.0-darwin-amd64.tar.gz"
      sha256 "bc103bab1633decdd145ab23f726045f957a475bac6ca63b91eb013e5fb3e7d7"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.6.0/ravi-cc-0.6.0-linux-arm64.tar.gz"
      sha256 "49aa5ac7df694f2e20707414ab53e1a2c86fd1e3886d8ae645e831330f782181"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.6.0/ravi-cc-0.6.0-linux-amd64.tar.gz"
      sha256 "9cfdfd54628da80b91ebf2c9c6bd1c7482e623f393c8e0fce2871e9318229352"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
