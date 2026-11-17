class Kloss < Formula
  desc "Build models from virtual bricks, by hand or through MCP"
  homepage "https://github.com/mklab-se/kloss"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "88172102ca822bb2d0c4f2be0a40afb287377c2f9256f5fb97eaeeec1092f561"
    else
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8a45c17f824439ad9803a9385c662067f52ee8c86e765d3065a29471472c92f8"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b126a828b506541315307de68a4ad505b29d140c337130b28dd53e7744174bb6"
  end

  def install
    bin.install "kloss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kloss --version")
  end
end
