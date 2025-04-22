class Astroctl < Formula
  desc "Command-line interface for Astropulse"
  homepage "https://github.com/astropulseinc/astroctl"
  url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.amd64.tar.gz"
  version "0.0.41"
  sha256 "87e1f997026d9df50bec5c9489fb8661139d8b9946621806a796a7b789424883"
  license "MIT"

  livecheck do
    url "https://storage.googleapis.com/astroctl-cli/latest.txt"
    regex(/^v?(\d+\.\d+\.\d+)$/)
  end

  on_arm do
    url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.arm64.tar.gz"
    sha256 "6c67be5f8161dabcc41e3c33afc6a465f832da09330558b4edffd0979207499b"
  end

  def install
    bin.install "astroctl"
  end

  test do
    assert_match "astroctl version", shell_output("#{bin}/astroctl --version")
  end
end 