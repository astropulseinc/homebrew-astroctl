class Astroctl < Formula
  desc "Command-line interface for Astropulse"
  homepage "https://github.com/astropulseinc/astroctl"
  url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.amd64.tar.gz"
  version "1.0.1"
  sha256 "8b1fe0720fa850ac3e52f50f0b3ad277c12593b0cda44715b72c0c37e40c4c3c"
  license "MIT"

  livecheck do
    url "https://storage.googleapis.com/astroctl-cli/latest.txt"
    regex(/^v?(\d+\.\d+\.\d+)$/)
  end

  on_arm do
    url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.arm64.tar.gz"
    sha256 "0af1e3601d09ddbf3ec56c62fbecb883e6e667d33490e88730b52184d2f72ff1"
  end

  def install
    bin.install "astroctl"
  end

  test do
    assert_match "astroctl version", shell_output("#{bin}/astroctl --version")
  end
end 