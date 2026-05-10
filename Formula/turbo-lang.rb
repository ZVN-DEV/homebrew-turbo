class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.0/turbolang-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "44e4093c2826aa71f68d39836c39ba9f297769297e60be15b2d552c626041bea"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.0/turbolang-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "c9868954570c102ae88147592063a9476f5b4673c8edb2182b87e9233e641294"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.0/turbolang-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a3a85d3dfaa5c19498da12e76c9002f54bcd4c7474a9e277fbe4f6252913404"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp" if File.exist?("turbo-lsp")
  end

  test do
    assert_match "turbolang 0.8.0", shell_output("#{bin}/turbolang --version")
  end
end
