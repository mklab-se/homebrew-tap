class Pidge < Formula
  desc "A fast CLI for e-mail and calendar"
  homepage "https://github.com/mklab-se/pidge"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ecfce8fdb253a730038c36b2ad46387d63f3ef339af3c08e875157f33d3b3d3e"
    else
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3346c34218ee8c9c0887f4b2e40eda8c4f889eb2bd278d5f92f41e99865ff44f"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e45d67437838fe5d463c8fb811195503c9c91de808aaf3fba40c4476b379655"
  end

  def install
    bin.install "pidge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pidge --version")
  end
end
