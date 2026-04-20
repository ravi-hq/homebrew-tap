class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.19.0/ravi-cc-0.19.0-darwin-arm64.tar.gz"
      sha256 "e85f89bfcd1a7410eb6b4335d72b0957f8d6e29bc6740bfc158889badce546c6"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.19.0/ravi-cc-0.19.0-darwin-amd64.tar.gz"
      sha256 "70418187a84589c5d4043cd5435a3bf8169924bba180fdfd80a001ca976b8126"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.19.0/ravi-cc-0.19.0-linux-arm64.tar.gz"
      sha256 "4209c9b5f64e35da15d639fe72426a629f7d2562f6945186688b6c8f414c36fe"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.19.0/ravi-cc-0.19.0-linux-amd64.tar.gz"
      sha256 "1f957da6c90bbc46089a7d007901938d42b5247df3bab754d171ee6d4a568efc"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
