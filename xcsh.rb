# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.66.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.1/xcsh-darwin-x64.zip"
      sha256 "e6c789f59c48cfb228b9cd8099ba4722911421f0d824ee5883798b8818d4c410"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.1/xcsh-darwin-arm64.zip"
      sha256 "58b4bc0a24ea81ea1ceb6dc8e7e46247250f39e768ca9ac309f700a48ee5203d"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.1/xcsh-linux-x64.tar.gz"
      sha256 "3b58cb8499f555c102b68b10fdb0e8703faac5eb906fcfabeb70810bcdc4f4d9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.1/xcsh-linux-arm64.tar.gz"
      sha256 "c4206a938a5664d1b4ea48ff669927f5c47f084ab3df266fc18fbf31e3ec5bda"

      def install
        bin.install "xcsh"
      end
    end
  end
end
