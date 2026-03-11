class Mdeck < Formula
  desc "A markdown-based presentation tool"
  homepage "https://github.com/mklab-se/mdeck"
  version "0.12.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "01edd4c090845977f62e57e2e473a4bc7bb5dbdd3c048835416c2db02f4606dc"
    else
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "61ee315ef774d637df36cc4283327f0b1385e13c6d8bc024072fed79b8e15597"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b2a61a1ce9cd61e0027fa1ffb0a5b3ce29a34523742889619fdfb209e99c212"
  end

  def install
    bin.install "mdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdeck --version")
  end
end
