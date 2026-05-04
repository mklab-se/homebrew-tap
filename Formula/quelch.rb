class Quelch < Formula
  desc "Ingest data from Jira, Confluence, and more directly into Azure AI Search"
  homepage "https://github.com/mklab-se/quelch"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b4003b63e310ca52a46a30d9cbe6b8f5fe770f91245274cca8527c642b5f21fb"
    else
      url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a164f931221d3d4bbf091609f4b32cbcd36cdaac747b72b822a325ecb21721e4"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/quelch/releases/download/v#{version}/quelch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bdbf28bd595569fe13ec7eb9aca97c4948e36c95b0bc9c8eb4e7726de1921358"
  end

  def install
    bin.install "quelch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quelch --version")
  end
end
