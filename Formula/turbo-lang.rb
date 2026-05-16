class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.9.0/turbolang-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "17d2c3b1b4fa0e84018d8e8f2c6bf5545c60615f81d79a80f3ef5b07dfa19778"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.9.0/turbolang-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "bdfa9d80f288dc0b3fcee5b96be9d6acba4d608d81a244732fe60507e390d9fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.9.0/turbolang-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a76cf5f76f416ac7e9931d787059617c0a5e097e522566591b2d07a026b4f699"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp" if File.exist?("turbo-lsp")
  end

  test do
    assert_match "turbolang 0.9.0", shell_output("#{bin}/turbolang --version")
  end
end
