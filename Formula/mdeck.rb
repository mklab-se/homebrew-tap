class Mdeck < Formula
  desc "A markdown-based presentation tool"
  homepage "https://github.com/mklab-se/mdeck"
  version "1.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7fd39e53f14755eb7d5adbb6e01373677338ef28f4c854e0dc14373f61d31998"
    else
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4d15fac7af0d57ccf61e3df25fee81b37b9ecf34cbe85df66b8edcd4546063f2"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d395943af9e9591e4933cedb173dcc1f0718d1f3cc6087128b87f1359b9cac31"
  end

  def install
    bin.install "mdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdeck --version")
  end
end
