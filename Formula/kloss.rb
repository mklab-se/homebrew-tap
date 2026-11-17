class Kloss < Formula
  desc "Build models from virtual bricks, by hand or through MCP"
  homepage "https://github.com/mklab-se/kloss"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "effc041a4a6509cf71a3d6c6e5cf0497c5b275050c16cac1f2c3173a91989790"
    else
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "accaf9e74af1057d317ae4ce9c0d36b88e60ab652177b45bfa742e833925df4c"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9747dcfa81db8817d6c030282d0dd8fa426603a5f724dd8670c4aa8e22c695cc"
  end

  def install
    bin.install "kloss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kloss --version")
  end
end
