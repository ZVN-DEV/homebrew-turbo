class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://github.com/ZVN-DEV/Turbo-Language"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.2.0/turbolang-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "978a46ecc5cba2efcea54020be3efef68fb323b0150d56e640b352b3fc22d4a0"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.2.0/turbolang-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "4100d6fdd73d97e30cc9c9dc311ed2ccac6a464aa954f6f21c5b3325109d0400"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.2.0/turbolang-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5206070c553f46f7c099c0b12e4bc14877ebb18434f9aaaec63489c7c09ade02"
    end
  end

  # Prebuilt binary — no compilation needed
  bottle :unneeded

  def install
    bin.install "turbolang"
  end

  test do
    assert_match "turbolang 0.2.0", shell_output("#{bin}/turbolang --version")
  end
end
