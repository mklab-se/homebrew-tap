class Mdeck < Formula
  desc "A markdown-based presentation tool"
  homepage "https://github.com/mklab-se/mdeck"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b565396910572912deff3c52ace9be2d1b906db333544b268c4b1432b13b14d8"
    else
      url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1ae1245dc7efb4434854c131ead359c642ad0ef770b913d5529dd116ec88ada7"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/mdeck/releases/download/v#{version}/mdeck-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "060a76be7b8b4edebf2762232f8dfb22db3329abec2ce3a0a65453e36bbf46f3"
  end

  def install
    bin.install "mdeck"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdeck --version")
  end
end
