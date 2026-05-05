# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.40.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.2/xcsh-darwin-x64.zip"
      sha256 "909332145bd6bf4fe2197360198d92c8abe5d2cd6dfa1da1b712be75bec97ac9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.2/xcsh-darwin-arm64.zip"
      sha256 "4f66d06b15f718e4a77c2d6276740368f5b32ef6fc13d34c5d7be23d4b802c5c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.2/xcsh-linux-x64.tar.gz"
      sha256 "eed836988c564d1a49a74fddb5f9450d670c906ac3968257ec13fdf042f1006d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.2/xcsh-linux-arm64.tar.gz"
      sha256 "9347e8b78e0fabc7068bc19cdcbe71f989dde5457f3c6d27063d783d6fbecc00"

      def install
        bin.install "xcsh"
      end
    end
  end
end
