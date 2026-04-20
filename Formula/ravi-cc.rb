class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.5.0/ravi-cc-0.5.0-darwin-arm64.tar.gz"
      sha256 "83368fe811e2bb1ee5d6960a8d48b8a6d36b0e34e714b7038b2f5f83526f17c5"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.5.0/ravi-cc-0.5.0-darwin-amd64.tar.gz"
      sha256 "da260132204d5ef670224993df74cf999ceed9e03da6b08d8607ec3eafa20660"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.5.0/ravi-cc-0.5.0-linux-arm64.tar.gz"
      sha256 "169d3a776760cb66f5c7aab7cc06f36c81b268bab7b860f4321bea247a440af1"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.5.0/ravi-cc-0.5.0-linux-amd64.tar.gz"
      sha256 "4b050729f92c4cf10e6660ebb0e042ca43e9e71f704d2fe1321b98e36280ea30"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
