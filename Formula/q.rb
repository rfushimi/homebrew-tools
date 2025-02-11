class Q < Formula
  desc "CLI tool for querying LLMs with context-aware features"
  homepage "https://github.com/rfushimi/q"
  url "https://github.com/rfushimi/q/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    assert_match "q #{version}", shell_output("#{bin}/q --version")
  end
end
