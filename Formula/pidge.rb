class Pidge < Formula
  desc "A fast CLI for e-mail and calendar"
  homepage "https://github.com/mklab-se/pidge"
  version "1.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7cea0ba1fef4705ab97b89a6ac442ca878fa8cee4c3765313b4e3ad0ae6c689b"
    else
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "751f9fd49074d6e641bfb273493f0681e8622218dc040cc108fe0312a3f97f18"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bae77ee46f7332830224041b4159797d5790c18d308b391affa2ba646169b562"
  end

  def install
    bin.install "pidge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pidge --version")
  end
end
