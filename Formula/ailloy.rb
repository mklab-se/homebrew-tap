class Ailloy < Formula
  desc "An AI abstraction layer for Rust"
  homepage "https://github.com/mklab-se/ailloy"
  version "3.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ee2c5397eaa68f191595d7b0c7d5d981c83de689b438042e27faafd638bab8b3"
    else
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7ace10b4e0eaab3f20a0106d22eed449520533a6316a2ecec8a86af5fab0a2ef"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6a0751c263b5398bf729e59b396716afd33e540848e9f86397214d5d843618f8"
  end

  def install
    bin.install "ailloy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ailloy --version")
  end
end
