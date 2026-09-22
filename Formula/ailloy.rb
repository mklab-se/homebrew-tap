class Ailloy < Formula
  desc "An AI abstraction layer for Rust"
  homepage "https://github.com/mklab-se/ailloy"
  version "2.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5de3ae758d3470bc51b3f8339e43cffc4cc4f7aee632a5bc068fedf084504740"
    else
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "39d784bac097bc4b6f43c0fd853eeb8c5b97f02938760b1745b1188d97bd75e4"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1b591b65d3ede227a3c1a5087663033ee3065c017f000239fd6b9120a4c5c7ef"
  end

  def install
    bin.install "ailloy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ailloy --version")
  end
end
