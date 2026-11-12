class Lykta < Formula
  desc "A highly visible dashboard for monitoring GitHub Actions workflows"
  homepage "https://github.com/mklab-se/lykta"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "894d41b6c3ebf1ce4289d2f78e76fa880f100ca25c65037bc7ca3ac763beb07c"
    else
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "058032c9ea4f1d56b0c3de10719b76c78dfdda681375cc94fdc5f5c0ce8188b8"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c0bfe5a8b862811c14d03141f0f8dfd37ab65fe7330ae117bb442336c285592b"
  end

  def install
    bin.install "lykta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lykta --version")
  end
end
