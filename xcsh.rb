# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.75.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.0/xcsh-darwin-x64.zip"
      sha256 "b4307bad904e0189ead527dbfff4d4eb427bc4870683440cd309e35f010043a2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.0/xcsh-darwin-arm64.zip"
      sha256 "2fd368b30bc3133994e89e31cf32e36e3c98751d273f8c0bdde894086df3edd5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.0/xcsh-linux-x64.tar.gz"
      sha256 "7e8ae99cf772f2f8f9a106ada11aae36e012b167c8217b5deb280b38dc56dffc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.0/xcsh-linux-arm64.tar.gz"
      sha256 "356789bee0f92d46459ce60b079428e4a55c34b88b12f3a85f5589c88a722103"

      def install
        bin.install "xcsh"
      end
    end
  end
end
