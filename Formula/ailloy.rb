class Ailloy < Formula
  desc "An AI abstraction layer for Rust"
  homepage "https://github.com/mklab-se/ailloy"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e5c6fd5715ce5e6dc3840a3e0920637761585234bce63b6a4aaf5128c33fce0d"
    else
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e42308314f90836bddb16a8a1c3ef3178dbc0f3d90f99603333365f346c7c61c"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dbce98937c62250dedf3a33ef204372c1d7e70ee3e3fe067ae7986e585f19bab"
  end

  def install
    bin.install "ailloy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ailloy --version")
  end
end
