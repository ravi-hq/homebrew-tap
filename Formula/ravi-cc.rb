class RaviCc < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.23.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.23.0/ravi-cc-0.23.0-darwin-arm64.tar.gz"
      sha256 "25cf43ec979284c6397924d037b6fc10841d8d47cb56f299abf5a1697eb4972d"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.23.0/ravi-cc-0.23.0-darwin-amd64.tar.gz"
      sha256 "240360afb35b729ada0ccb7a01eeaf1f6aa09633d184df528df4d72cc6ce0b0a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.23.0/ravi-cc-0.23.0-linux-arm64.tar.gz"
      sha256 "5a3937a59203e28bbc91bfc96a90e56aa6944eaebb73005df0efd6b0304b2681"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.23.0/ravi-cc-0.23.0-linux-amd64.tar.gz"
      sha256 "05eb3010322543da07236d2ab0e7760b5b8e299a78446365abac28719a97e77d"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
