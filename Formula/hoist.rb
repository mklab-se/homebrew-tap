class Hoist < Formula
  desc "Configuration-as-code CLI for Azure AI Search"
  homepage "https://github.com/mklab-se/hoist"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "61460c5a48f789b0ef2a2e2c8fc2f1f5a67cd0bb9eeb63de214f862a26f10361"
    else
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5649ce7482023d745fb082bae0242dddd7a4063d6f6176e29107ec8f0d9285ba"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6eab105ef9dc86cc9f7bdad86251389558e82a0e252d77aaf02d61dbfd85a4a2"
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoist --version")
  end
end
