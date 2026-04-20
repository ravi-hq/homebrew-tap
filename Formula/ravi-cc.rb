class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.14.1"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.14.1/ravi-cc-0.14.1-darwin-arm64.tar.gz"
      sha256 "bf5921c592efddcef294bfd59d00790948d47db996b5a5ac38fbcdf21766125d"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.14.1/ravi-cc-0.14.1-darwin-amd64.tar.gz"
      sha256 "6cc0ebde4262269a18fc9dd8d6e3c407a8efe428bff203d880c11dc19da64bac"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.14.1/ravi-cc-0.14.1-linux-arm64.tar.gz"
      sha256 "38e2be1ecc7fce5bc21d9639acf94f4cde9b3eb3918cba53981b3b277d670f75"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.14.1/ravi-cc-0.14.1-linux-amd64.tar.gz"
      sha256 "2c7f5589b913da5ea796c587d670787e4184c8db019bb427b9a65605b3bc096e"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
