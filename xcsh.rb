# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.40.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.1/xcsh-darwin-x64.zip"
      sha256 "6991b3b1e43bfb40c57233e61256923e2376049dd0e1ca2c75bb45e7ff0855d8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.1/xcsh-darwin-arm64.zip"
      sha256 "287400f2f6829c80c6205e308dc4efa05472ce8ee3b067699af786cf64d2b993"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.1/xcsh-linux-x64.tar.gz"
      sha256 "a02737d066729ee8a462855b676ada279e9ea8032b1e0f3e0fe1376904c89b7a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.1/xcsh-linux-arm64.tar.gz"
      sha256 "7403651d8f69a77977fd17bbb789b0b686de6250c299e58e9bccce57973d73ba"

      def install
        bin.install "xcsh"
      end
    end
  end
end
