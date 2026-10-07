class Cosq < Formula
  desc "A CLI to query your Azure Cosmos DB instances"
  homepage "https://github.com/mklab-se/cosq"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "028d3ab7a08340e943a629ee6b3b55da7000048fc3bd2cbb0ec8335bbac91177"
    else
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9a94a7e87e7023f2176ba1e756ac249870d8a9e7db900ba3f472dcf022c622c0"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "52f55edf8ddb15cf1092e71eaf3c6cb85109c0af250f4c0f1337cb1fceda2d51"
  end

  def install
    bin.install "cosq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cosq --version")
  end
end
