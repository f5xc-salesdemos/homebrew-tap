# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.0/xcsh-darwin-x64.zip"
      sha256 "e0af65611f39a511ae3e7479ed50686e37b4b45a8fe3bf1c16a1b1cd92bbacca"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.0/xcsh-darwin-arm64.zip"
      sha256 "4c8c6f2f20a4f66b2aa737164ee2220caa070ef639b56c9072b00f14983a30c5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.0/xcsh-linux-x64.tar.gz"
      sha256 "ece06653798a72fcd98d23e8716dde73f1e9c128458ff7895c0530f9b811a777"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.0/xcsh-linux-arm64.tar.gz"
      sha256 "cc4e1b67d6eaaca77aa6636adccd24ac89e235888a3a8f253698c0d28755765f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
