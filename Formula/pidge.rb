class Pidge < Formula
  desc "A fast CLI for e-mail and calendar"
  homepage "https://github.com/mklab-se/pidge"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "799577cda96923513ebfcb8ff0c118ca3f5762a4b551d6b9491b08c21d584830"
    else
      url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4a1cdd41f0a3134420f89cfd498caee926f8be0d6a56ea7a9fd88cea42a06c31"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/pidge/releases/download/v#{version}/pidge-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c78ee97b6d6780dac5055be12bebac333da1d13df12e4c79c9e42782d06bbcc7"
  end

  def install
    bin.install "pidge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pidge --version")
  end
end
