class RaviCc < Formula
  desc "Daemon-based companion CLI for Ravi"
  homepage "https://github.com/ravi-hq/ravi-cc"
  version "0.15.0"

  on_macos do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.15.0/ravi-cc-0.15.0-darwin-arm64.tar.gz"
      sha256 "a7dca0ee97bad0cc81daf41066e2cb81f8dcd3060f481beaa114d8e7e208586e"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.15.0/ravi-cc-0.15.0-darwin-amd64.tar.gz"
      sha256 "ba6478d4fdbdc0b0a05d75b00bba663e32a5641eb8e859e75dcdaf994bec71e1"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ravi.id/ravi-cc/v0.15.0/ravi-cc-0.15.0-linux-arm64.tar.gz"
      sha256 "ec3f95e922711eb6b80125971b7cda71da8688706bd2fb78a29ce8f4b616f579"
    end
    on_intel do
      url "https://downloads.ravi.id/ravi-cc/v0.15.0/ravi-cc-0.15.0-linux-amd64.tar.gz"
      sha256 "47cb3c9c7b58b1907322357fdcbec60aa701d9baf8d23f51688fb6e48f2f95dd"
    end
  end

  def install
    bin.install "ravi-cc"
  end

  test do
    assert_match "ravi-cc", shell_output("#{bin}/ravi-cc --version")
  end
end
