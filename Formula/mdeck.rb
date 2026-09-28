class Mdeck < Formula
  desc "A markdown-based presentation tool"
  homepage "https://github.com/mklab-se/mdeck"
  version "1.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "58a4d045c5632250b80333518691262561696b239efae9b9a0db96baf3907fa5"
    else
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a68a1f6fbc41efd1b27886b47cb976b287c6961488baf5b381811fe4b9cd27a8"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c8656c10f8378720001b4849184adca1adc0b55beecf70e63e19e1aae7d9c536"
  end

  def install
    bin.install "mdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdeck --version")
  end
end
