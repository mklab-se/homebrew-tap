class RustyTmpl < Formula
  desc "An infinite canvas for your notes, stored as Markdown"
  homepage "https://github.com/mklab-se/skiss"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8bb62b7b28cbe77a7b916f39048fdd784a6816597ba4c1bdbe769b11af0218ff"
    else
      url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9f0be984059ca85d26549ecaf4d8d4a218fe04bc1f86e68dd0ae4eac7302390d"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16aa8f4b3ab6776319130fb1f990726553713f39b3e8ef557d6a5db772afb684"
  end

  def install
    bin.install "skiss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skiss --version")
  end
end
