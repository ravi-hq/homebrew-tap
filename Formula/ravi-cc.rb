class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.16.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.16.0/ravi-cc-0.16.0-darwin-arm64.tar.gz"
      sha256 "923d5253d4017cf43a178af72e55b61f70694ad1251cba232768483da897a73e"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.16.0/ravi-cc-0.16.0-darwin-amd64.tar.gz"
      sha256 "bf435589f1ebd4d28d69484215f59ef3697553c46e95d29f42ce3bae3012d85c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.16.0/ravi-cc-0.16.0-linux-arm64.tar.gz"
      sha256 "cbcad51af5620e3e823df1b10d84628adbd764459caf11838b303a2bc5b13a6b"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.16.0/ravi-cc-0.16.0-linux-amd64.tar.gz"
      sha256 "202137473405b968137afdfd39f13e8fee5caddba26383b3807a32d181a13397"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
