class Ravi < Formula
  desc "CLI for AI agents to access email, SMS, and passwords via Ravi"
  homepage "https://github.com/ravi-hq/cli"
  version "0.7.2"
  license "Proprietary"

  on_macos do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-arm64.tar.gz"
      sha256 "67ec6d67a9b74e731a8289a5bd00a640add9ab2cbe8852a1c010152f73930874"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-darwin-amd64.tar.gz"
      sha256 "afa5245db3ee368436d6ec0f85b221b6a4ac19f5a2be80011db0f9f2cff59822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-arm64.tar.gz"
      sha256 "6443220c3b5a87dfd6af8960e2f0583881953340d2ce0ec8e2744bf1fff913ab"
    end
    on_intel do
      url "https://github.com/ravi-hq/cli/releases/download/v#{version}/ravi-#{version}-linux-amd64.tar.gz"
      sha256 "01d2a1ab1a9e7b470b0ee18d1f9e62c3d17bb769cc040b131bb85ae8f8805130"
    end
  end

  def install
    bin.install "ravi"
  end

  test do
    assert_match "ravi version", shell_output("#{bin}/ravi version")
  end
end
