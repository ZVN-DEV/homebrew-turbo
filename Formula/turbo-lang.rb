class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.13.0/turbolang-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "d66edb332598813e37f6ce193cef1a114da136f62f4b6c3d3029d88ab0f5eb92"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.13.0/turbolang-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "ba171fd4a0798d3a8e29ccb3d3ec1e9551056661a58573c75d6dddaae2e610a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.13.0/turbolang-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14ffcee4352c065c18054928d0b1bb91da347767e8d29f6766179fdd4fd2f0fb"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.13.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
