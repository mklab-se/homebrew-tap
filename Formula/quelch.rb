class Quelch < Formula
  desc "Ingest data from Jira, Confluence, and more directly into Azure AI Search"
  homepage "https://github.com/mklab-se/quelch"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "92d42f6bd96c18f5cd4c183566809052f354e3481b23f49e5696c71948b5237d"
    else
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "55712150be2c2ddb8c84e2cd27adb60ff950449df0836005f03f433943bc2334"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2822e02287f4dd5f2a1cd5405ecf97d3ccb086662339664ec3f5cb45fec24a5e"
  end

  def install
    bin.install "quelch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quelch --version")
  end
end
