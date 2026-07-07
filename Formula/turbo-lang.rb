class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.11.0/turbolang-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "9a743b1a30edd59537c51949f6337e9cd770a33e1c381d70d37709005ee396d9"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.11.0/turbolang-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "73202b38c8d0a7e5b65387272bada933342fe240924bec2599dc8034b19a4875"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.11.0/turbolang-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a6ee7b349687f0e9a42f42a3fed49ef77606ecaad235f65b4c3397555dc7a869"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.11.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
