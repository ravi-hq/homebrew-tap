class Ravi < Formula
  desc "CLI for AI agents to access email, SMS, and passwords via Ravi"
  homepage "https://github.com/ravi-hq/cli"
  version "0.6.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-arm64.tar.gz"
      sha256 "cce89e8bf1ab3a58434c49786e47b075fc4fdbc0619bfe04d8e9d3432d2e2ea8"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-amd64.tar.gz"
      sha256 "09e77d52692c653cece40df8bc16970460cf778ae72968f4a971cc8fb2280e9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-arm64.tar.gz"
      sha256 "fde3966309c70b24276e811b7eb13c3fb91646b5492cd1c935c9c083ad095595"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-amd64.tar.gz"
      sha256 "72a7fc9aaf2ccc2f45532d0f2c9a5a537fab8b2e596d19f98666d2d533c9da25"
    end
  end

  def install
    bin.install "ravi"
  end

  test do
    assert_match "ravi version", shell_output("#{bin}/ravi version")
  end
end
