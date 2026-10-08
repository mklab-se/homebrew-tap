class Honk < Formula
  desc "Make your computer honk like an old-school car"
  homepage "https://github.com/mklab-se/honk"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ed91e2222117727ddef1811cfb4171a6007555003ae7aa983dc0a02e3923db72"
    else
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e5896fd70ef7f934816b7849ac74fed0bd2439967294c5565fd01f68c3f15f1b"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "75910d97ff176eb0d54af8c05d000ca6c3f6a1777ebc7aedc5a934b914b59a8a"
  end

  def install
    bin.install "honk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honk --version")
  end
end
