# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.18.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.4/xcsh-darwin-x64.zip"
      sha256 "a8d3ab0b8cd30b2d118498dd7fb7c0ef0b4983765a559ff19b101295a5072934"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.4/xcsh-darwin-arm64.zip"
      sha256 "b98ea254fe3560f90ab542f694adc43fc771e1de9f871382ae48c8f029c44b3a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.4/xcsh-linux-x64.tar.gz"
      sha256 "b765eb04967c3eded7b9f831d460dc2b22b9999dfb51d93230a6517ecd80e64c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.4/xcsh-linux-arm64.tar.gz"
      sha256 "788292c8a9a9c3db6f994807eb914ce84884d6b31e2d48e186d841741b5e439b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
