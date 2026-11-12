class Lykta < Formula
  desc "A highly visible dashboard for monitoring GitHub Actions workflows"
  homepage "https://github.com/mklab-se/lykta"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ea9fc9cca183e0ffa3a46ca79ec4d354953f985ec62b78b790605729497e5938"
    else
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "508931cd170b58af8c1f0e447d1b3a64533b49c2ee2d78ca60ed832d9bb07f83"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ac48ae62e98c106a49cb01273138e01b16e69bab772de45abbe240e54caf2118"
  end

  def install
    bin.install "lykta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lykta --version")
  end
end
