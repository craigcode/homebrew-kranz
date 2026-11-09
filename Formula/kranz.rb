class Kranz < Formula
  desc "Git-native mission control for governed AI coding-agent work"
  homepage "https://github.com/craigcode/kranz"
  url "https://github.com/craigcode/kranz/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "4e3a5e6182acc0369623e9f74e22a882203798a796214a07eef1d212284a8f1b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/cli")
  end

  test do
    assert_match "kranz", shell_output("#{bin}/kranz --help")
  end
end
