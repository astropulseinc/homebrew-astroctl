class Astroctl < Formula
  desc "Command-line interface for Astropulse"
  homepage "https://github.com/astropulseinc/astroctl"
  url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.amd64.tar.gz"
  version "0.0.155"
  sha256 "13d14ea2bed11ce459ffe15c82c152dad0acbe9fa6f5e01aed7d6b4e2d227020"
  license "MIT"

  livecheck do
    url "https://storage.googleapis.com/astroctl-cli/latest.txt"
    regex(/^v?(\d+\.\d+\.\d+)$/)
  end

  on_arm do
    url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.arm64.tar.gz"
    sha256 "8078f7e39d73b53812a6d2da29584d396421cb8cf4b776730378cf32c572de9a"
  end

  def install
    bin.install "astroctl"
  end

  test do
    assert_match "astroctl version", shell_output("#{bin}/astroctl --version")
  end
end 