class Kloss < Formula
  desc "Build models from virtual bricks, by hand or through MCP"
  homepage "https://github.com/mklab-se/kloss"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "246a39048a1e2dab665f41acf0002ac858298fa69dc018dd9a5b29e8ccac3ac8"
    else
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "31c49671b9532f7e2f205f7e9d6a0868c2eeaab459e5b23f3f8da6d4290ba51c"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "de930176467b5abc995cb1e09e0484a957bc750f4ebcc70aebcfeb9b4c256153"
  end

  def install
    bin.install "kloss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kloss --version")
  end
end
