class Ailloy < Formula
  desc "An AI abstraction layer for Rust"
  homepage "https://github.com/mklab-se/ailloy"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "08c5db7e9d44ecd8f7b061efe6145feeb4b669b0b7c0bc4cd4a9be14aa7c5a02"
    else
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6940a73d40a3a468e5cbe0e14fbbdd7fef02a64635fa07e3064c6e1c7da2a98a"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ba43176259d221096c13aa3636fb767d4e2a803bd22172e96f9854cf7662426f"
  end

  def install
    bin.install "ailloy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ailloy --version")
  end
end
