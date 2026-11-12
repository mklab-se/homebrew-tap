class Lykta < Formula
  desc "A highly visible dashboard for monitoring GitHub Actions workflows"
  homepage "https://github.com/mklab-se/lykta"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "66f08e30b2fa11a848161831ff5d6e4cc60d6016adc793c48a0565bd8c299123"
    else
      url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d6db13b854a1d7f2e7c03dc0d7965db492e5b1198bdf3be55686ff30cba5cc48"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/lykta/releases/download/v#{version}/lykta-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea5e06f2905664b1e7f7a6dd2a9e52e68862d21b5e80eb2c22589d5cfd810523"
  end

  def install
    bin.install "lykta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lykta --version")
  end
end
