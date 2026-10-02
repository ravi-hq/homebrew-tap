class Ravi < Formula
  desc "CLI for AI agents to access email, SMS, and passwords via Ravi"
  homepage "https://github.com/ravi-hq/cli"
  version "0.7.5"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-arm64.tar.gz"
      sha256 "124b230f6720ef9d6f364d4421e6608d2f93c78a253023dc0b2865190b57245a"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-amd64.tar.gz"
      sha256 "f8a2a07b2ba23ce0fdfa6a2ca88c9e352296dc16ffda9e80ce9f74562211cf06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-arm64.tar.gz"
      sha256 "6d2488f5958072e7962bca6e8839adf3867061d5200cab1f335e6e66f8674dae"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-amd64.tar.gz"
      sha256 "0e3338c618562ccea8dbfd6ec82d837374c2ec6e1f9f3622ec5d8a88e6e8a63c"
    end
  end

  def install
    bin.install "ravi"
  end

  test do
    assert_match "ravi version", shell_output("#{bin}/ravi version")
  end
end
