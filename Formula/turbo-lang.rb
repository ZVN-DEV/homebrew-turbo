class TurboLang < Formula
  desc "The Turbo programming language compiler"
  homepage "https://github.com/ZVN-DEV/turbo"
  # url will be set when we publish releases
  # url "https://github.com/ZVN-DEV/turbo/archive/refs/tags/v0.1.0.tar.gz"
  # sha256 "PLACEHOLDER"
  license "MIT"
  head "https://github.com/ZVN-DEV/turbo.git", branch: "master"

  depends_on "rust" => :build

  def install
    cd "turbo" do
      system "cargo", "build", "--release", "--bin", "turbo", "--bin", "turbo-lsp"
      bin.install "target/release/turbo"
      bin.install "target/release/turbo-lsp"
    end
  end

  test do
    (testpath/"hello.tb").write <<~TURBO
      fn main() {
          print("Hello, Turbo!")
      }
    TURBO
    assert_match "Hello, Turbo!", shell_output("#{bin}/turbo run #{testpath}/hello.tb")
  end
end
