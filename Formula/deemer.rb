class Deemer < Formula
  desc "Run AI-assisted integration tests that judge whether your tests passed"
  homepage "https://github.com/mklab-se/deemer"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4cecace9da02c5a8d852ec55de0bdd0cf8f7ad537ceff1ee48b8a8486b7d5941"
    else
      url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "561ecbe78fd44eaa5ce196758f5df48e9e83e5246169b07eb77cb603365ad341"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/deemer/releases/download/v#{version}/deemer-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "579c7ecd81c8abe23070a239fd2e2b465939f35e18ed6e77a19911b1096d4595"
  end

  def install
    bin.install "deemer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deemer --version")
  end
end
