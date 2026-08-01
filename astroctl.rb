class Astroctl < Formula
  desc "Command-line interface for Astropulse"
  homepage "https://github.com/astropulseinc/astroctl"
  url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.amd64.tar.gz"
  version "0.0.146"
  sha256 "65daa8eb697dee431175c9570757e3e69fd8cab2e9dde9e2a8833d45ee7bc7dd"
  license "MIT"

  livecheck do
    url "https://storage.googleapis.com/astroctl-cli/latest.txt"
    regex(/^v?(\d+\.\d+\.\d+)$/)
  end

  on_arm do
    url "https://storage.googleapis.com/astroctl-cli/astroctl-darwin.arm64.tar.gz"
    sha256 "cc05dfda283569ae9378eee5af3c3fe589a7023959583dbaea2f7358d1eedc0c"
  end

  def install
    bin.install "astroctl"
  end

  test do
    assert_match "astroctl version", shell_output("#{bin}/astroctl --version")
  end
end 