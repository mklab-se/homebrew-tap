class Quelch < Formula
  desc "Ingest data from Jira, Confluence, and more directly into Azure AI Search"
  homepage "https://github.com/mklab-se/quelch"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "92c6954b105938264323f44f8e1fd827cafb87f67ea2b27c889b3b7cf99a9f1c"
    else
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "14295053bb1638c17eeef8fba7cd317cab6581b934166360d3de97b410c64004"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0300554749da09559ef173717cc2ed2513008bb65afd5f44e40117816e1825b9"
  end

  def install
    bin.install "quelch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quelch --version")
  end
end
