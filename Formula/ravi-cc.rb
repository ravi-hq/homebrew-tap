class RaviCc < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.22.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.22.0/ravi-cc-0.22.0-darwin-arm64.tar.gz"
      sha256 "8bf83dd72446c17221a8acd989e3613cec6d59ce3aa546b7185e4a0fa1f6cd41"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.22.0/ravi-cc-0.22.0-darwin-amd64.tar.gz"
      sha256 "b15879acac27a800b4a0919c2338d7e2903cb8893dd2ab877d9c9264033e51c8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.22.0/ravi-cc-0.22.0-linux-arm64.tar.gz"
      sha256 "ac3d84c56ceac61309ddee63ca02067b428f69930f2ec53254f80d4dc4d4ad1d"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.22.0/ravi-cc-0.22.0-linux-amd64.tar.gz"
      sha256 "84e11da44b3dbd0c35ac04c22bebe7b921e03d08499c5c299eaf273af6b14844"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
