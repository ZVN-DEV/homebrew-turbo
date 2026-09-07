class TurboLang < Formula
  desc "Native compiled language with familiar syntax"
  homepage "https://turbolang.dev"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.16.0/turbolang-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6e7deb26fce0298182e0cdddff2f45951c0bb4ba71aa18231c205362a52c599c"
    end
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.16.0/turbolang-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c714a932a59d537136c00e1d83824d527d0beee6f8c4a0a68636e3a406e1f13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ZVN-DEV/Turbo-Language/releases/download/v0.16.0/turbolang-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95e9876a7407b7c09c227b747269ecbbd09bbfb5f62863b9e145b91f6cf95e10"
    end
  end

  def install
    bin.install "turbolang"
    bin.install "turbo-lsp"
  end

  test do
    assert_match "turbolang 0.16.0", shell_output("#{bin}/turbolang --version")
    assert_predicate bin/"turbo-lsp", :exist?
  end
end
