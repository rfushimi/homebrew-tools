class Q < Formula
  desc "CLI tool for querying LLMs with context-aware features"
  homepage "https://github.com/rfushimi/q"
  url "https://github.com/rfushimi/q/releases/download/v0.1.8/q"
  sha256 "f9a45dda6e5be345e3af8578280f86fb441b29a42e803847ae32e2b4218f77a6"
  version "0.1.8"
  license "MIT"

  def install
    bin.install "q"
  end

  test do
    assert_match "q #{version}", shell_output("#{bin}/q --version")
  end
end
