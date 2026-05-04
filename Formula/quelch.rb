class Quelch < Formula
  desc "Ingest data from Jira, Confluence, and more directly into Azure AI Search"
  homepage "https://github.com/mklab-se/quelch"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "be94cf71386455e29a9604c5fa73260346759811a1bd72ad2dd320eb0d921b56"
    else
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "660117fdf9f9fa8120a0143e77fa0b037c875d8814d4d3db5da3dba0bde82a1b"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "570dd5bf3946fcd943a367931339e9c40d366776a4d3a5b8ceec37d19d0d0860"
  end

  def install
    bin.install "quelch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quelch --version")
  end
end
