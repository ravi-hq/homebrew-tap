class RaviCc < Formula
  desc "DEPRECATED — renamed to ravix. Install via: brew install ravi-hq/tap/ravix"
  homepage "https://github.com/ravi-hq/ravix"
  url "https://downloads.ravi.id/ravix/v0.27.0/ravix-0.27.0-darwin-arm64.tar.gz"
  sha256 "16c4d17f83ea035f8486ee7e24732c4a0b9987d25c982cdb16d190c9c62a2d5d"
  version "0.26.0"

  disable! date: "2026-04-21",
           because: "renamed to ravix — run: brew uninstall ravi-cc && brew install ravi-hq/tap/ravix"
end
