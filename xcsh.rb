# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.90.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.90.0/xcsh-darwin-x64.zip"
      sha256 "3c1d4bad52b6edfa5c513dbd243610a685d939996ed2b2c321154a9e7b9ff182"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.90.0/xcsh-darwin-arm64.zip"
      sha256 "871a571e4324926016962c8d9936907736b8bce73eef0630d0d9bcdeab8e1a51"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.90.0/xcsh-linux-x64.tar.gz"
      sha256 "219267acc85f7728a3efecad012e94768426bc492e17b00dce3bff337fc39dbe"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.90.0/xcsh-linux-arm64.tar.gz"
      sha256 "ba46f184af580c77c5ab63b18568da9248c22f3bcf79806eaef695c5a8ad317a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
