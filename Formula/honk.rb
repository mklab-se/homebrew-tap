class Honk < Formula
  desc "Make your computer honk like an old-school car"
  homepage "https://github.com/mklab-se/honk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "de0876fd7fd04394c09e2cc1c9a875f9bb1c12870d9ea0a034b2f15c316e2baa"
    else
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "48f2c36ddbe4d0a0ce1c4b0fafd532074baf361c4f51b6c61dea94086274ecde"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6288edc0fd4530205194fa1db753d919e1b1db0152852699415a0d35dde8ea93"
  end

  def install
    bin.install "honk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honk --version")
  end
end
