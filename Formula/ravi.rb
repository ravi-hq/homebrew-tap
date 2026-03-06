class Ravi < Formula
  desc "CLI for AI agents to access email, SMS, and passwords via Ravi"
  homepage "https://github.com/ravi-hq/cli"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-arm64.tar.gz"
      sha256 "b1076642fc58ecaf420a90efe1d5b24e0b5ab3d52e742d5364dc0b1ad09bf1ba"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-amd64.tar.gz"
      sha256 "b6d8d63f9b0b143e6eb54a6b843af722de586750a688662e236ac0098b59c947"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-arm64.tar.gz"
      sha256 "b821fec24b419a4d3057ae72aa2b3d0da0bb67a97d3ebe7e119b4e0e3deef17a"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-amd64.tar.gz"
      sha256 "d39252b620173027a872665aa252d6f9da42ce0f95caf62300913ee4a9c95519"
    end
  end

  def install
    bin.install "ravi"
  end

  test do
    assert_match "ravi version", shell_output("#{bin}/ravi version")
  end
end
