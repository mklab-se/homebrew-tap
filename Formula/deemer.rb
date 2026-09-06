class Deemer < Formula
  desc "Run AI-assisted integration tests that judge whether your tests passed"
  homepage "https://github.com/mklab-se/deemer"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9d3c25907eae05f1b927672ed7ea75c36f781efb7062e8c53fc4b55b5ddffbb7"
    else
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d6f3ed95daa7c1f238ffe8dcb33b8cfaabd629a028accb35192e7373b97ac0c9"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bc1a1be0e4d343399c109cd8f92c970c4dfd9b52f1cec0206a753275dc681853"
  end

  def install
    bin.install "deemer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deemer --version")
  end
end
