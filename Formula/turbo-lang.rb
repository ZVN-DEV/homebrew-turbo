class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.14.0/turbolang-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "40613f63fec95a7f3aec6317f4f187e9d5d9181a06664df49771bde9a0dcfbef"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.14.0/turbolang-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "eb75edb36490a348a4d3db35b2f5e584d62da1d5bdf9d6ffc301b7850a1d38ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.14.0/turbolang-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "730e0010f765b8847a1ee835ecf3679ad076892a671a4ed6bb43af0ed146fb9c"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.14.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
