class Cosq < Formula
  desc "A CLI to query your Azure Cosmos DB instances"
  homepage "https://github.com/mklab-se/cosq"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5f40cbb512bfa26307ca2bca7e28c72609e88c39d256234bde6fa3112242d6fd"
    else
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6395f8f93b6b3cfbd9bfc2992fc7a0cd3a858cd63fb801687661a22ceb572f11"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b1c15f78b914d155793b3f3289d591d537b15aebf2c1baa7ffb8b1c11bf44fe"
  end

  def install
    bin.install "cosq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cosq --version")
  end
end
