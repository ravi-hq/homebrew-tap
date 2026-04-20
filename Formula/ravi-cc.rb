class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.9.0/ravi-cc-0.9.0-darwin-arm64.tar.gz"
      sha256 "529bf7ea73332886ca55302d050ad907e9c51782680cdfac3f638b204ea7315c"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.9.0/ravi-cc-0.9.0-darwin-amd64.tar.gz"
      sha256 "9ac3f314119692fe1471294f5b59d20b8196e9d2718aadfa2ea9d12f84ba1c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.9.0/ravi-cc-0.9.0-linux-arm64.tar.gz"
      sha256 "8041bff19ee0c1b7d09c09431170b65dc7e54d01882bd41674195ecf7855d0cd"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.9.0/ravi-cc-0.9.0-linux-amd64.tar.gz"
      sha256 "90b217b3347a969633a4edd8ad1f1d67cae674a2d71e4b848278886b67f1f7ff"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
