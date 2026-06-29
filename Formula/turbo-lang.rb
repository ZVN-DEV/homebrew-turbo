class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.1/turbolang-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "78194327a7b4f68270eb0d985e670c5099d56234e8361d9c47c6b381c70c223c"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.1/turbolang-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "8827aadf9b31e60d4914dea1a55443578411ff3385f3dddaf50443245b695051"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.1/turbolang-v0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7893d4fd30a5f44eeeb1d30ee26545d017549d961d22fd165bb530c72971aeaa"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.10.1", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
