class Pidge < Formula
  desc "A fast CLI for e-mail and calendar"
  homepage "https://github.com/mklab-se/pidge"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "52c532cfa63187547098414d96f3da405241df813d8d90f6b7098d41b06d0a77"
    else
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2834335b5e0e063dc158a04fe526fcce37d887c75a51d0c20dc4ff015233f0af"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "40cd4ad4625488f107a6b915e1a2152721bfb17b180cf525fa6d5f475bca7fc4"
  end

  def install
    bin.install "pidge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pidge --version")
  end
end
