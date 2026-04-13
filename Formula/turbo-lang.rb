class TurboLang < Formula
  desc "Compiled, type-safe language with TypeScript DX and Rust performance"
  homepage "https://turbolang.dev"
  version "0.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.7.4/turbolang-v0.7.4-aarch64-apple-darwin.tar.gz"
      sha256 "ec61aece0a7d7226682973193b3ed13258e379d885fe39aacc53d8590336ee31"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.7.4/turbolang-v0.7.4-x86_64-apple-darwin.tar.gz"
      sha256 "33d538b495db469d71acfab83bbc29d3f0b3b4e2274a275b8da9cb121c257e5f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.7.4/turbolang-v0.7.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c9f60288f04db4205e2b27f6ff9688579d185ae3247598492aa2bbb401d945d"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp" if File.exist?("turbo-lsp")
  end

  test do
    assert_match "turbolang 0.7.4", shell_output("#{bin}/turbolang --version")
  end
end
