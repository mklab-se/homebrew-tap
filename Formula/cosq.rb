class Cosq < Formula
  desc "A CLI to query your Azure Cosmos DB instances"
  homepage "https://github.com/mklab-se/cosq"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ec9fda28ee970918ea7790fb619263ac54265ac908c01284fc5c6875dc7c9828"
    else
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "afabdcb78a64f7a1526dadc7d775884e2e3238353ca6c5c2e85683541ea4b757"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54501448c0454eb32933cf73154f4713a6654a9417a3a32596047942a40f707b"
  end

  def install
    bin.install "cosq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cosq --version")
  end
end
