class Rigg < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/rigg"
  version "2.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e4695776b5219c32e37070d6f7696c9d3a0eb3b07ad21d57f5e9dc0abc406f00"
    else
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c18e9dd44a4969f40dfdd91b34936e74a7be3eb29b08ce6afefd0018755201ae"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "05e3d7ca8ac496505606ee608a8ce6a923287be8515a1d9c1bd370ba4969b5c4"
  end

  def install
    bin.install "rigg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigg --version")
  end
end
