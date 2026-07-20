class Astroctl < Formula
  desc "Command-line interface for Astropulse"
  homepage "https://github.com/astropulseinc/astroctl"
  url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.amd64.tar.gz"
  version "0.0.135"
  sha256 "5a2e54e795d0146624c2cce721aa0095b73a933fe82ccee1268ba9ca969e106d"
  license "MIT"

  livecheck do
    url "https://storage.googleapis.com/astroctl-cli/latest.txt"
    regex(/^v?(\d+\.\d+\.\d+)$/)
  end

  on_arm do
    url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.arm64.tar.gz"
    sha256 "39fe99647c0df395b593a9743a9b413ce8640ee776da513d3354825cca907fa0"
  end

  def install
    bin.install "astroctl"
  end

  test do
    assert_match "astroctl version", shell_output("#{bin}/astroctl --version")
  end
end 