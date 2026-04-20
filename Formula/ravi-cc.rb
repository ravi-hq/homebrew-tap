class RaviCc < Formula
  desc "Daemon-based CLI that routes Ravi email events to handlers"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.25.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.25.0/ravi-cc-0.25.0-darwin-arm64.tar.gz"
      sha256 "af771fdee5c26be7d2ec98d1ae670dd9af7ab9d2fb232f1d7d39238bcbbcfb10"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.25.0/ravi-cc-0.25.0-darwin-amd64.tar.gz"
      sha256 "f182a45e2f980fc244ea63b18776cbaa227204be4e5fc1c05d1df34e27dc53b5"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.25.0/ravi-cc-0.25.0-linux-arm64.tar.gz"
      sha256 "2535326784e8fb170b16d5af4e6c01a3e9ff6d99df8c04e222c4228937cbcf80"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.25.0/ravi-cc-0.25.0-linux-amd64.tar.gz"
      sha256 "e1f13ccf2144e3c31a2713770a81f38570ed0148c2d633765e56d7c0f2d4b23a"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
