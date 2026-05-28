# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.86.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.1/xcsh-darwin-x64.zip"
      sha256 "abefb845758bd0488b7d2a0bd9e3e58b67742250b57383c036e41b65b7fc6e40"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.1/xcsh-darwin-arm64.zip"
      sha256 "e84d0da49623fd9b355c473a05d41fa02d0d1b1d187324d8c8893e0ea4138d84"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.1/xcsh-linux-x64.tar.gz"
      sha256 "1304610a81e9391381bf5438a054f89b7b440d5984b5ca2ed0ab0e377d5e690e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.1/xcsh-linux-arm64.tar.gz"
      sha256 "86975463577855a96022a0602711bc96a9f8dd38bed1004d9a831c68b1660b5a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
