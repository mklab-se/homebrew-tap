class Hoist < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/hoist"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3ba641879b252f1249b48437dbc61bf74627e320a30c830cfd80eb25dd76d030"
    else
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "58f02c26cb5a2d6985c6750ccaa604e340c477c2d6f62dd5b45a4109f79ed445"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d67d42fdb26252202fdbeba7ff6826cef733ade3264b3074a3ca68296aade44b"
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoist --version")
  end
end
