class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.18.0/ravi-cc-0.18.0-darwin-arm64.tar.gz"
      sha256 "25bcf807fd47d4beefd40facaf7fa2c0ddc4ee96a9a41384ec55244e7ed17501"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.18.0/ravi-cc-0.18.0-darwin-amd64.tar.gz"
      sha256 "f92281d30f6de7cb385785a905992ab543af497f6270dbaced510525490fd25e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.18.0/ravi-cc-0.18.0-linux-arm64.tar.gz"
      sha256 "7759bd7341b2d7cb963e98adb77b7c527b38408f513b1064ff53e03cda4bf327"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.18.0/ravi-cc-0.18.0-linux-amd64.tar.gz"
      sha256 "eda4e4358522824a253c5250aacf62a9b88fa389be28dca0e6e631d9ff1b42ad"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
