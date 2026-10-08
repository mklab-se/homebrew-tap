class Honk < Formula
  desc "Make your computer honk like an old-school car"
  homepage "https://github.com/mklab-se/honk"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1df768f577042636d4383fc3212d4cc3ae77f31bd94e00b134d3b2b6c9fa45d2"
    else
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3922510c65affbfe4e6607efd6d86929b7f2492ebd5937fa2e9c2cab7895cd33"
    end
  end

  on_linux do
    depends_on "alsa-lib"
    url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fdf229169a740a979a8917c0cb7b449fc9b28b5dcafe12be8aadcb56a4134688"
  end

  def install
    bin.install "honk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honk --version")
  end
end
