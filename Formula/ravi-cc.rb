class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.20.2"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.20.2/ravi-cc-0.20.2-darwin-arm64.tar.gz"
      sha256 "855ee8abd73de3f55155d2bb2dcfbf5db73190f61419be4cea1063fcd9a7100b"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.20.2/ravi-cc-0.20.2-darwin-amd64.tar.gz"
      sha256 "cbf938eca98fb1527efdb1a750a9e8276d2602f36534712bc7285e96d603a2a6"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.20.2/ravi-cc-0.20.2-linux-arm64.tar.gz"
      sha256 "cfcf76fe09ed2ab2513eeb091f74fcfbfb4ddaa8d1b719c5b9ec124e78b35461"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.20.2/ravi-cc-0.20.2-linux-amd64.tar.gz"
      sha256 "ff62a89b7fe641464232830733a61b62a989ac34928d3f1fa34aa8f7988260af"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
