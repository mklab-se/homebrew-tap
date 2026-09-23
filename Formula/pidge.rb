class Pidge < Formula
  desc "A fast CLI for e-mail and calendar"
  homepage "https://github.com/mklab-se/pidge"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1429f085173667e7c9b36d9ab302178d138ba7bcf769e9bddea3041a743d02ca"
    else
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "aa3da3df595e24e2a1d5da0b34af95e22b76392757a4809cab19f6ff72c4566c"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "806df5e2230904abcf6f074859cbe3efdf70a85fd5f51a35aa606d9531af1a3a"
  end

  def install
    bin.install "pidge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pidge --version")
  end
end
