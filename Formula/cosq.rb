class Cosq < Formula
  desc "A CLI to query your Azure Cosmos DB instances"
  homepage "https://github.com/mklab-se/cosq"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7940c12688862c7ec43e23d37d94a6f4ea796a4a9647dbe309192ce691133d3b"
    else
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a2bd2e3e3b7e73d1fb014664023e11a66d2fc2dc3c1264a2796bb9d1587b1a57"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8aed3ddf6e298b85a10b952884bf110ceb35c9bd492be74373016605ee3c119c"
  end

  def install
    bin.install "cosq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cosq --version")
  end
end
