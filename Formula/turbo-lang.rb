class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.2/turbolang-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "91a0691d2b97e126a945b5a9923f706da21f13593afcde6104ed1a311bf42c6c"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.2/turbolang-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "7e53ebe416e639bbe6c5cb18947b0452df8ce1509b658743873ac652951e1727"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.2/turbolang-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c41e9e5394a9e2ecb2f20ab22e7581300eb38b1c6f8aaae5c914dabcc581095"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp" if File.exist?("turbo-lsp")
  end

  test do
    assert_match "turbolang 0.8.2", shell_output("#{bin}/turbolang --version")
  end
end
