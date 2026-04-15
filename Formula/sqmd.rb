class Sqmd < Formula
  desc "Code intelligence for AI agents — local semantic search over codebases"
  homepage "https://github.com/aaf2tbz/sqmd"
  url "https://github.com/aaf2tbz/sqmd/archive/refs/tags/v3.5.1.tar.gz"
  sha256 "555d3c47117eacc6914f8edca086e2ae95d0aa01dbe277e7b87766dc07d3bc9d"
  license "MIT"
  head "https://github.com/aaf2tbz/sqmd.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqmd --version")
  end
end
