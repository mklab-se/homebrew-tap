class Hoist < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/hoist"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f4e53d1b99763e85b287b3da62ad200ea0d5b90e4c3d3ef28bc82e94f7d5ad66"
    else
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "242d253b5724da81c5ae7f3f27ee32df279c96a2e7c8ba06715ef0390b3c319f"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fa97e2207baa9fdce27af19cc1ad03c64522d4347ee376219bb5de903c4d3363"
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoist --version")
  end
end
