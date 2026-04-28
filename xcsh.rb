# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.20.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.1/xcsh-darwin-x64.zip"
      sha256 "89708513480fb04a1765e91959c16f4d7250bb4ab7b953d448acd5c9fef39a20"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.1/xcsh-darwin-arm64.zip"
      sha256 "a48593e8bae08ccfd907f5f6606c730e68eb591009edd259215a7fadea38eee0"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.1/xcsh-linux-x64.tar.gz"
      sha256 "6cc278e57d5a1ce23b04bc3fc10e4dcff3695a42b7b29ea8e5e3c54ae2ae916d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.1/xcsh-linux-arm64.tar.gz"
      sha256 "c436bd3630cd6b9a09b7d0940e060fae855e6d0890c010d5fb1f3258eb30a117"

      def install
        bin.install "xcsh"
      end
    end
  end
end
