# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.68.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.68.0/xcsh-darwin-x64.zip"
      sha256 "dd1b1c8973e7f216aeb475a6663efb0835e1b5810d860a045482771822a908f9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.68.0/xcsh-darwin-arm64.zip"
      sha256 "50b453fcf83f3d691128fb0f6ace62c4652222a2556983e4949d6ef811a1531a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.68.0/xcsh-linux-x64.tar.gz"
      sha256 "23fc6b0928417b4a72f6f6f5776e0ed32a94d639277590ee6619f6287e5dfe05"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.68.0/xcsh-linux-arm64.tar.gz"
      sha256 "3e10a970f74b658666dc864d37c747acd459c1002e3df3032eef9a351a4c8852"

      def install
        bin.install "xcsh"
      end
    end
  end
end
