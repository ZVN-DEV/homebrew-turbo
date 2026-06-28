class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.9.2/turbolang-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "d63e8c220c8ec6bfc4d297cf74a482e7fcfdd57dcae0e4c2e2bcd56c70aa5115"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.9.2/turbolang-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "f87d2356406a454608e4112b4c5ff9c56951bb1c83e1883f484d2b667fca15b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.9.2/turbolang-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31df34c61867503eeec8899090fc9f9a56c3dc20824de89f5157eea459b78b2c"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.9.2", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
