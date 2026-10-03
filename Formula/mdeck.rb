class Mdeck < Formula
  desc "A markdown-based presentation tool"
  homepage "https://github.com/mklab-se/mdeck"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c9d6aceaad4ed068366410565775dd51abb19e67f003743b36d2510df2de0dad"
    else
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7aa6499b16f06c28e57920bf988b27a39a91ce4709a6714f835c9de704673dc2"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "849e0ac45c369568be1573e3620e03f752bd4eef9310ccd89f7673ef58052cbd"
  end

  def install
    bin.install "mdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdeck --version")
  end
end
