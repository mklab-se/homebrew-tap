class Rigg < Formula
  desc "Configuration-as-code CLI for Azure AI Search and Microsoft Foundry"
  homepage "https://github.com/mklab-se/rigg"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9c4141dcd41920d9bedbfc7d4ba8c9e2b8e1f220d4412aa0bfe2bb4ca3a00328"
    else
      url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d1d167129e3a2043b893286fc3241c094e35b4cb049b8a4c163878d942a66431"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/rigg/releases/download/v#{version}/rigg-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a1cc46e1898297201420ccb9bbdb43d0edc5149521a0eaae0525723d87132bbc"
  end

  def install
    bin.install "rigg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rigg --version")
  end
end
