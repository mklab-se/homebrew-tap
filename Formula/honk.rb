class Honk < Formula
  desc "Make your computer honk like an old-school car"
  homepage "https://github.com/mklab-se/honk"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9ed3d838c11f0df4b5650189f0c1b1ea1ffeaaef7df5d465cf26a896e88c73bb"
    else
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "8b84603c43cce90ee3359d622757a63d590da3937e6ad23ad11ae83870fc451b"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0271140745b13aced455b896983332035f5cec6b4a4968c7619d76e130a47fbd"
  end

  def install
    bin.install "honk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honk --version")
  end
end
