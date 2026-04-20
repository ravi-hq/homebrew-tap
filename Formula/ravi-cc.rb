class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.12.0/ravi-cc-0.12.0-darwin-arm64.tar.gz"
      sha256 "ec731bb679721d6e4d0a12f4b66e0f8d1ec3192e5e185a51a98d72a3c30047c3"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.12.0/ravi-cc-0.12.0-darwin-amd64.tar.gz"
      sha256 "0e6d1fe5a53a32c7b10115b89c6bcf2b6842a4a116ac1f49a554996ba9dd1d5c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.12.0/ravi-cc-0.12.0-linux-arm64.tar.gz"
      sha256 "1348174dafb0ea996f12c5b20080ae35d9962063381c27a0e6d7376881561109"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.12.0/ravi-cc-0.12.0-linux-amd64.tar.gz"
      sha256 "c7d5a112aea85969d45585c1e97d1b792577584b63e45378128f05163183100e"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
