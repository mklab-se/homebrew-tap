class Lykta < Formula
  desc "A highly visible dashboard for monitoring GitHub Actions workflows"
  homepage "https://github.com/mklab-se/lykta"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "44adf9921e301a62ae712b518023e4a0f25a6c56ad953ef32eed5b0c0f9ee172"
    else
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "97d684108ae6f0b050b4bd788aa23d7dbde4d615cff05986bb4da85e09dc123a"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea9e78145fb458568f2311bc57f218ee2cddf2fc1f72a82c060b881322d1ba5a"
  end

  def install
    bin.install "lykta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lykta --version")
  end
end
