class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.20.0/ravi-cc-0.20.0-darwin-arm64.tar.gz"
      sha256 "b867e7395fe07c93153857cfab5f6d7df144fd8fc6d08ccabf9e408757e49594"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.20.0/ravi-cc-0.20.0-darwin-amd64.tar.gz"
      sha256 "440e4d0d3d0796b1c59afeb50b19222e37f9d49d12ab7b76030f1f72e289e449"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.20.0/ravi-cc-0.20.0-linux-arm64.tar.gz"
      sha256 "a35db2aa9b744e9751335055767e6a72867d95bfe4cc2b878d8b6a9992df1c8b"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.20.0/ravi-cc-0.20.0-linux-amd64.tar.gz"
      sha256 "6c921543537e7c84de164f7c327541751f2a5a219f64a577ce07a4db744034b7"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
