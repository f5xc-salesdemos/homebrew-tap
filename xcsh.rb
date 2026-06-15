# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.30.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.4/xcsh-darwin-x64.zip"
      sha256 "93d18efa25d83bb57b2ed62a51425b1e4eef4f63b02c9a1f877e9bb172103ae6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.4/xcsh-darwin-arm64.zip"
      sha256 "5e502bb2627a3f4a527c6395b1b746000429c272215b223246940056d3409ca5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.4/xcsh-linux-x64.tar.gz"
      sha256 "c73e9ca9c46aaf97e09806f0c924fe38707d2246daaa4871fdb6a035f4e93166"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.4/xcsh-linux-arm64.tar.gz"
      sha256 "d8e5971579085e4f9ee86929fc67bdea0383b39c3e2aff13083b20d1eaaa3afa"

      def install
        bin.install "xcsh"
      end
    end
  end
end
