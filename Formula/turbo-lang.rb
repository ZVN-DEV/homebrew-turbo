class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.12.0/turbolang-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "de6f7474a2245772ab972be442069ffc6318d5e9db0e624ba7d3f65d6d293f30"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.12.0/turbolang-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "a349cd4cc0de71395e8043400d1abad259a981cccb88444257410e13bc70006f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.12.0/turbolang-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "031c43191869ea9d8df38511174b6546ea3544add41b9cb1c4e2871dcd236b38"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.12.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
