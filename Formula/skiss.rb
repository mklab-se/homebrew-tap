class RustyTmpl < Formula
  desc "An infinite canvas for your notes, stored as Markdown"
  homepage "https://github.com/mklab-se/skiss"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ddae37baed7f824e18f38034582a2fd2bd02244f98bb4251ce0a8030409a667f"
    else
      url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b62d751e638726c9e721ec0faa2ae939d14698f30b891e9c80f704d379df098a"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/skiss/releases/download/v#{version}/skiss-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "948ae0ea0d31001b4b1ab490e357c54154c530eb0dcd4d149ffec1220c928e23"
  end

  def install
    bin.install "skiss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skiss --version")
  end
end
