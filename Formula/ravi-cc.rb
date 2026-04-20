class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.20.1"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.20.1/ravi-cc-0.20.1-darwin-arm64.tar.gz"
      sha256 "c90f5408d8c7638559d5cf8fdda03bb81e16025550802af10108a4873acf0e86"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.20.1/ravi-cc-0.20.1-darwin-amd64.tar.gz"
      sha256 "90211a3b5c0bd19f8c1df103e0ef8ede441f6c4540453b5adc10d6acf4e13c64"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.20.1/ravi-cc-0.20.1-linux-arm64.tar.gz"
      sha256 "12d5d6d0f8c1f90d15279a08c252d5e0a6d99f459599a12d21c9dff5473baed3"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.20.1/ravi-cc-0.20.1-linux-amd64.tar.gz"
      sha256 "17f484b006d8a88d6dbe2db3b128ea7fa7d8f404f91f17eb49a37ae26a3849dc"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
