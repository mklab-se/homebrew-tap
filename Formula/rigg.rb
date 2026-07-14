class Rigg < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/rigg"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3104f60ea848b31f41bb5c69846f8d2025faf0afa65bbde3bdb30abd7c1f1b3d"
    else
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8d296d6db87c5c96a9dccb472f82c700ad86c3f0487ec20302b8239c14eccc76"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e8bb5d88e953f9177d67333754f66b111052e600481ea56cbe2b37329f7bfd6"
  end

  def install
    bin.install "rigg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigg --version")
  end
end
