class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.2/turbolang-v0.10.2-aarch64-apple-darwin.tar.gz"
      sha256 "85cb250b53ee66465a81b5af771f1d08f68dd18d538707f44872a83af84b9759"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.2/turbolang-v0.10.2-x86_64-apple-darwin.tar.gz"
      sha256 "c775df41484a44ab7f4a8f14a13e9e5bbe9be16fbe2aff3514cba069c5af4002"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.10.2/turbolang-v0.10.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbf381f000450cff0eb84fbda9c728738e79efe626d3a2651654a914536bcf00"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.10.2", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
