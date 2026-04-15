class Sqmd < Formula
  desc "Code intelligence for AI agents — local semantic search over codebases"
  homepage "https://github.com/aaf2tbz/sqmd"
  url "https://github.com/aaf2tbz/sqmd/archive/refs/tags/v3.5.1.tar.gz"
  license "MIT"
  head "https://github.com/aaf2tbz/sqmd.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", *std_cargo_args
    bin.install "target/release/sqmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sqmd --version")
  end
end
