class Hoist < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/hoist"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "aaad018de66d33b8b37f2bbbad810b13ca45769e2a719898b02b44da0ccf3f20"
    else
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ff60006109d9ad2ceda12439d16d63f0b826a99634f835a5bf7cce82286b8c81"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ac9ca02372c929da7febcaefcae13a38901cfd659ed4fbb41f5326f11b775e55"
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoist --version")
  end
end
