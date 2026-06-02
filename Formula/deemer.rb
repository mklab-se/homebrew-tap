class Deemer < Formula
  desc "Run AI-assisted integration tests that judge whether your tests passed"
  homepage "https://github.com/mklab-se/deemer"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f88e15effba2d70705cafdfeea0390ee3cfce890bcc03b454cc487fb7c9fa43a"
    else
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dc3553abe8051bd4db0cabb4911f6ebd4ad6a52f0a595d72b761d8a4b1c386bf"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ff3f2127b05b450c34922c40aba48147b3ca23c0e972f4723025d2f5cb21e39f"
  end

  def install
    bin.install "deemer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deemer --version")
  end
end
