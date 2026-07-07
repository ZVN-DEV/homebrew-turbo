class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.3/turbolang-v0.10.3-aarch64-apple-darwin.tar.gz"
      sha256 "d5cab08d3809d21fabfb0e3c6ae2c3c5b632da68e071ed9338b2f6990ddf3377"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.3/turbolang-v0.10.3-x86_64-apple-darwin.tar.gz"
      sha256 "8e7c74018555dc28e704f91ce7bfa673b2cba3409036d3ebe3a0155da90f05f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.3/turbolang-v0.10.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22d051875eb1de53a0b206c38bcb4a7403b2eeca65b4bdf1601998f7031de610"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.10.3", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
