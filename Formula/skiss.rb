class RustyTmpl < Formula
  desc "An infinite canvas for your notes, stored as Markdown"
  homepage "https://github.com/mklab-se/skiss"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3a90934bd38de42c0b2e8e6d996a15a3bcaa375d35be293de79e61743bcd576b"
    else
      url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d69d4384e735361adde351f233436fbedc77e208dc48f917d44a3aba98555d3f"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4176d0bf92a3244f8a0c6e632d992cca87a7d0c6d5b565162877311fd3701ed8"
  end

  def install
    bin.install "skiss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skiss --version")
  end
end
