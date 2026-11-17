class Kloss < Formula
  desc "Build models from virtual bricks, by hand or through MCP"
  homepage "https://github.com/mklab-se/kloss"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c85d5ef6d1a3a9d620d19374d8a0cf7956c043df02736e084f853a75685476ad"
    else
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "043dd817c2bb0e67760ab378986217a1fadbfe1cbb19d444f37f4701b33e8e91"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "958e10335aba5892a21cc6b3bd9567c5ea6710e41f0f391d85a4a7f8bd613472"
  end

  def install
    bin.install "kloss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kloss --version")
  end
end
