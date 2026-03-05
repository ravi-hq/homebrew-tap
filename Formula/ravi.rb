class Ravi < Formula
  desc "CLI for AI agents to access email, SMS, and passwords via Ravi"
  homepage "https://github.com/ravi-hq/cli"
  version "0.4.1"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-arm64.tar.gz"
      sha256 "a6a04eed12180eedeafdbb5d94b0a625d09f27d9fd748a4b0056e05c6a4d54f3"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-amd64.tar.gz"
      sha256 "bcc1d1bff50a063c96f7986961e3d18cc5d7399ed6f6b7a80cb660bef04a6611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-arm64.tar.gz"
      sha256 "0350d3ee6706588879593bca78e5f31af0cd1282533285053b30e073537607a1"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-amd64.tar.gz"
      sha256 "dae683821bb337534009522edfdb22d374c22d03f4a6b81b32e807e79c785e18"
    end
  end

  def install
    bin.install "ravi"
  end

  test do
    assert_match "ravi version", shell_output("#{bin}/ravi version")
  end
end
