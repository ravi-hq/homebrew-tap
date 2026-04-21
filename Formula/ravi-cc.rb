class RaviCc < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.26.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.26.0/ravi-cc-0.26.0-darwin-arm64.tar.gz"
      sha256 "99ae4e6525446decbb78978825c9ad9443e1137dae8861fb1647d3f41f555e9c"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.26.0/ravi-cc-0.26.0-darwin-amd64.tar.gz"
      sha256 "0a4d8af02c0386548a77a7416b453b7af9119d5c9f7848ece2a3b6aa117e9183"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.26.0/ravi-cc-0.26.0-linux-arm64.tar.gz"
      sha256 "37bc4ced41ea4f615fffccc1c1006f73ee2d7bac57e04ff89acf4daa188ee503"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.26.0/ravi-cc-0.26.0-linux-amd64.tar.gz"
      sha256 "a5b78ec288f9281fcd177fef850235c6323dcd281380d6ed774cc0ebad8d3c2c"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
