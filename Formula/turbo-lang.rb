class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.2/turbolang-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "343980be3c8984c51abd5167b0a0dc51d968a4ae69b1197bf0a72ae95af27444"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.2/turbolang-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "dc9cea3a7c54041dd9a1ceb20d0b40e7c6acb2e64dd21cc8c8c19b1802c14813"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.8.2/turbolang-v0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8655b54840f7f01117c1eda769cff38ff3bea5c3205377c9e593abfb94bba822"
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
