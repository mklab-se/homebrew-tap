class Quelch < Formula
  desc "Ingest data from Jira, Confluence, and more directly into Azure AI Search"
  homepage "https://github.com/mklab-se/quelch"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a77690e4822878b58148ace11e5aa1f5339e88ee00cd810dc5c59e07b2e9dfda"
    else
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "99d3f2b10c6488dc4d317613d532790e84adf00d2bb01a5a1542ef8b40a999c0"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6affc1da57459effc72dfe34f3f1ac84b64a8dc733d1aa1a579f7a7af6c5f8fc"
  end

  def install
    bin.install "quelch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quelch --version")
  end
end
