class Presemd < Formula
  desc "A markdown-based presentation tool"
  homepage "https://github.com/mklab-se/presemd"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/presemd/releases/download/v#{version}/presemd-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "430eaaff8c6dba7fe7c0299c69db09e61ed48a665522115e4b1baf21af728277"
    else
      url "https://github.com/mklab-se/presemd/releases/download/v#{version}/presemd-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "05cc1dabd2520f1acf8dc72541e8390e1d76764dcf0490a071a0ff882b85ebe7"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/presemd/releases/download/v#{version}/presemd-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4e01a03429a5a2ec922ed012164d2370c9d3030bbd42f1dde7431e23699cbd63"
  end

  def install
    bin.install "presemd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/presemd --version")
  end
end
