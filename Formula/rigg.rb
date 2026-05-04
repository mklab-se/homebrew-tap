class Rigg < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/rigg"
  version "0.16.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "214e4dbb5ad1d6335d06da6b28665dd151e6e802e47d743ece0e145265208c80"
    else
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "46f1b0eba41cc4ee69d1fbb203f36a5c1250114d1d02ddb1da724b82ef6498f7"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "66ddc5ed01f6158a6da74be8b86c2486e6872c9ea16ecc67e776f9307fa4f8a2"
  end

  def install
    bin.install "rigg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigg --version")
  end
end
