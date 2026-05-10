# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.62.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.62.0/xcsh-darwin-x64.zip"
      sha256 "d5c1abfd82f852699f50bbc806108298ffe98583fcc3e511ac809304bcd68c25"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.62.0/xcsh-darwin-arm64.zip"
      sha256 "530c49b0c98941ad0f4c477e0d622fee5d0c128db2af01eabc5ffc82b2cb4dd5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.62.0/xcsh-linux-x64.tar.gz"
      sha256 "fd4167e2913f1b882bd9822ac3d4c274b77db93b7528cd9672a4a17f0e910f2d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.62.0/xcsh-linux-arm64.tar.gz"
      sha256 "1173a7d1e607c7de24f32146ca5f4b75eee20703fd4f2cf0bcfcdd6aaa9d75bf"

      def install
        bin.install "xcsh"
      end
    end
  end
end
