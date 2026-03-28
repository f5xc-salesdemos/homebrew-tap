# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.3-f5xc.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.3/opencode-darwin-x64.zip"
      sha256 "8638c239fc2eea47bfa2334b962b0a989660df1425539314096b3c5b545099c5"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.3/opencode-darwin-arm64.zip"
      sha256 "fd049bdc8cf60ae956ca87bffa7f4ead8f10c4d04857b2ab059eac8496c24476"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.3/opencode-linux-x64.tar.gz"
      sha256 "561d8a3ed5ead4f85af0df9aa3a8c61edd7e36d258e6148f025457f8340acd5d"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.3/opencode-linux-arm64.tar.gz"
      sha256 "a9bd8e8052fa7746bcf06d666771db4dedbd7ca29b0092317a819c369ed8edfe"
      def install
        bin.install "opencode"
      end
    end
  end
end
