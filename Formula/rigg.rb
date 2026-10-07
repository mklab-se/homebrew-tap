class Rigg < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/rigg"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "93583eb01f69700bf96bf4b65de94cfc4ce39c603bc2a33826112704849caaac"
    else
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8e0a1d4e3df945cb105f278427ad9cf634c10f8eb024c55546b467dfdd43a7a6"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1bd83aee4200674de5ca1681f0138fed438b10a0aade4f9e1b905d7ef9ea94d2"
  end

  def install
    bin.install "rigg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigg --version")
  end
end
