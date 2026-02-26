class Cosq < Formula
  desc "A CLI to query your Azure Cosmos DB instances"
  homepage "https://github.com/mklab-se/cosq"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "422cd644a86d067fe88a67c48902eda71ef838d39014cc9821647b320ed7501f"
    else
      url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e8a09978b9fc64e5d80bbd54c9c4852ca0b6cbac7cbe8fc84bb18b15ebc55380"
    end
  end

  on_linux do
    url "https://github.com/mklab-se/cosq/releases/download/v#{version}/cosq-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "71366262b1fabb3acc5fc61dc23d4fc41a63b8702eed1f6f031c4ede2c10fa31"
  end

  def install
    bin.install "cosq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cosq --version")
  end
end
