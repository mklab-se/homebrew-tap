class Ailloy < Formula
  desc "An AI abstraction layer for Rust"
  homepage "https://github.com/mklab-se/ailloy"
  version "2.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "06c3ca83c44c2f40c16fa96c4881725f18b432c2e9f58a9804244cfd54c76b9d"
    else
      url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "03da9946777bd6ee22cfc21be5362bcdd11ff7145e2b76e90735b6ee17a05af0"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/ailloy/releases/download/v#{version}/ailloy-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "64ca49eaf92b6e4b91771a833c699e95b08ff2f6af7cc73005c152835da7d286"
  end

  def install
    bin.install "ailloy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ailloy --version")
  end
end
