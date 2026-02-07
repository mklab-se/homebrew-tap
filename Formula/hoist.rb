class Hoist < Formula
  desc "Configuration-as-code CLI for Azure AI Search"
  homepage "https://github.com/mklab-se/hoist"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b64788f1e9e18e1614bb37fd169086ada481a17ccd4f4ea94971c6658c2ad43f"
    else
      url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "93b26741a2e42daf7c82108ed24eeab7f0d35f790b495e301853df7055f29c4f"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/hoist/releases/download/v#{version}/hoist-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f615f1be4ac840a9e48d9d2e3531c31a35ed771ca8b8fceb04b8fd9d2338012c"
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hoist --version")
  end
end
