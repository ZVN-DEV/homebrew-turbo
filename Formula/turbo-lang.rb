class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.0/turbolang-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6933dc5ab115c08f558f7fcab8491cb60c797c610a28586a09122ec02c21740"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.0/turbolang-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "6989aa7ee673c953e67db889499c85508f7bfa9de5123e46e7c81584f7b47874"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.0/turbolang-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f7981c487514b101113e3df812373a9d5f52bb01c583a4e03e37f9d349e3e49"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.10.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
