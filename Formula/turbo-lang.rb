class TurboLang < Formula
  desc "The Turbo programming language compiler"
  homepage "https://github.com/ZVN-DEV/Turbo-Language"
  url "https://github.com/ZVN-DEV/Turbo-Language/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c16d39d559447553ac07a714c031eea87865003c50e0afa3a55c53098c1f2204"
  version "0.1.0"
  license "MIT"
  head "https://github.com/ZVN-DEV/Turbo-Language.git", branch: "master"

  depends_on "rust" => :build

  def install
    cd "turbo" do
      system "cargo", "build", "--release", "-p", "turbo-cli", "-p", "turbo-lsp"
      bin.install "target/release/turbolang"
      bin.install "target/release/turbo-lsp"
    end
  end

  test do
    (testpath/"hello.tb").write <<~TURBO
      fn main() {
          print("Hello, Turbo!")
      }
    TURBO
    assert_match "Hello, Turbo!", shell_output("#{bin}/turbolang run #{testpath}/hello.tb")
  end
end
