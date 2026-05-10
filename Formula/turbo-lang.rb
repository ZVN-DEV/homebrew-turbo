class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.1/turbolang-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "b9253a2ac05436f676e1d6ba9cdb50f14d454a2205f939ac8fd2fb64156df7aa"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.1/turbolang-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "04708724361712c147da382513afd219195564c2631c0b189d931f6b5699d1ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.1/turbolang-v0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f02c29394e84c33a20d87aea9c861cd0b51b47000d9deeefa9bd35ab3b7c7e0"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp" if File.exist?("turbo-lsp")
  end

  test do
    assert_match "turbolang 0.8.1", shell_output("#{bin}/turbolang --version")
  end
end
