class Kloss < Formula
  desc "Build models from virtual bricks, by hand or through MCP"
  homepage "https://github.com/mklab-se/kloss"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "87f22a95c0996510faebeecf64aeadb5b43797df50b1bf481bce88aee2b24785"
    else
      url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "96e9b4458c292eb3a11670c879f01cfc43cdc2cd24f988de97a2b97ad1c028ab"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/kloss/releases/download/v#{version}/kloss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "436d66109a2a4a007fafb969757ab7050fe3b618e9ed1ccc6bb02c91673cc45a"
  end

  def install
    bin.install "kloss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kloss --version")
  end
end
