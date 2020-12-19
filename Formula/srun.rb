class Srun < Formula
  desc "An efficient client for BIT campus network"
  homepage "https://github.com/vouv/srun"
  url "https://github.com/vouv/srun/archive/v1.1.4.tar.gz"
  sha256 "1fc83b5b6f8b67b18d660e99ab8da3e83915ce373b48ac1779d4b18953211287"
  license "MIT"

  bottle do
    root_url "https://github.com/vouv/homebrew-tap/releases/download/v1.1.4"
    cellar :any_skip_relocation
    sha256 "a0da895e2d2a2f63c33d3c222e686ca10a540259aaa52d9098fbcad193f5a2f9" => :big_sur
    sha256 "a0da895e2d2a2f63c33d3c222e686ca10a540259aaa52d9098fbcad193f5a2f9" => :catalina
    sha256 "a0da895e2d2a2f63c33d3c222e686ca10a540259aaa52d9098fbcad193f5a2f9" => :mojave
    sha256 "a0da895e2d2a2f63c33d3c222e686ca10a540259aaa52d9098fbcad193f5a2f9" => :high_sierra
  end

  depends_on "go" => :build

  def install
    system "make"
    bin.install "bin/srun"
  end

  test do
    system "#{bin}/srun -v"
  end
end
