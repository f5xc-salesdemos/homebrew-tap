# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.28.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.1/xcsh-darwin-x64.zip"
      sha256 "6273fc83fffb6043e15a21daa6fd964a26efaa9ee187e9377e79e6ca9588d79c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.1/xcsh-darwin-arm64.zip"
      sha256 "ba8bf555768405121746cd46f0d805b06e73896b2b94afbd12e5dfe8777c7317"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.1/xcsh-linux-x64.tar.gz"
      sha256 "7fc31a28618837856777f4727e3af1276c77a708172a1d41402b39205cc3fd71"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.1/xcsh-linux-arm64.tar.gz"
      sha256 "be26e06b5e6df1dd88778e67abf27a46856bf3e3fa1e590296ba480eb9527cfd"

      def install
        bin.install "xcsh"
      end
    end
  end
end
