# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.48.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.0/xcsh-darwin-x64.zip"
      sha256 "fb82e4dbad63af3f504161300e53932e06eefa152c4c72c70b2a33650f5e24d8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.0/xcsh-darwin-arm64.zip"
      sha256 "9965f26c59148b93faabc707fdbda4cfaff27e53fabc60f645cb38800a17c1f5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.0/xcsh-linux-x64.tar.gz"
      sha256 "7831b48ff115a1eeb3581acbc8ed7c112a98d4c60a9dd1637869b437d3257473"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.0/xcsh-linux-arm64.tar.gz"
      sha256 "dc9016d6cdefc6d0fb56aee70cfca0a746c9f0bdc22a7b17afcfdc584b69223f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
