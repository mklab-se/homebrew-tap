class Honk < Formula
  desc "Make your computer honk like an old-school car"
  homepage "https://github.com/mklab-se/honk"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8740a03f4afa8ebbe4d7fe5f2fe608f3b0acf29391642adcc92f2ba40b2db6f2"
    else
      url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ef81ac9ef4bd85e0580a84e50e20b9ec74e130a908e3a78629ecc3bded2bf4db"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/honk/releases/download/v#{version}/honk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "120e506bb1fce792038f684cb320ac96a12defc94ba8a3b503cade66b54d969f"
  end

  def install
    bin.install "honk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/honk --version")
  end
end
