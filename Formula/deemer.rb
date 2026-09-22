class Deemer < Formula
  desc "Run AI-assisted integration tests that judge whether your tests passed"
  homepage "https://github.com/mklab-se/deemer"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bb965b2607371798902e462cb803d96c79ba2a80a8c82e94b94fe3b1d24c794f"
    else
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bd33758f5934bb418272de0e78abfabeccac35fce3d77ea07c715069ec0ef0b4"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "51ddfdc1dc22e230f04082490600815d57028464004991465d2d2d205bde61b2"
  end

  def install
    bin.install "deemer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deemer --version")
  end
end
