class Deemer < Formula
  desc "Run AI-assisted integration tests that judge whether your tests passed"
  homepage "https://github.com/mklab-se/deemer"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "204ccdd41de4c1929411b9811cbce135420df7479e05fc74c3e346f4f2395b20"
    else
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "75078391983b58b4289dcdbf7445e92bab28d6580974bcf743fc37fcb24ece73"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4add0ced9f33bb1fdf955e0db44a7a0574b99c19e568ecfeb1a29e2d564bb2d7"
  end

  def install
    bin.install "deemer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deemer --version")
  end
end
