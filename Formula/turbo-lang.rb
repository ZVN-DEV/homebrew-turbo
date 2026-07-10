class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.15.0/turbolang-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "96bf2ad1bfbeb687206bcce9c74aec23001e8cf399a5818c773a8dc0aaf46b67"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.15.0/turbolang-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "8965d599adf39a1af3f02d3349986a759314821e502e57ed5a11724987ff63b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.15.0/turbolang-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f878c7480d8e3d4f357f51cb7f31f148b39261ec412ead250cbfa7ea584ea33"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.15.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
