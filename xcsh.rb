# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.54.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.54.0/xcsh-darwin-x64.zip"
      sha256 "a8fa65dd8b32c1838dd098582b98fda9fcc12c93991e6f418f0177f024c01ecd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.54.0/xcsh-darwin-arm64.zip"
      sha256 "aed5e8f50730a5478d8549c1ddf9cc9058eeab47f8f3b02ede353fd75b9d82c4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.54.0/xcsh-linux-x64.tar.gz"
      sha256 "c9f1a13d5ebfb75ce179be2c21dacb2aba2577ff751643563fc7a6d7505954eb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.54.0/xcsh-linux-arm64.tar.gz"
      sha256 "952b63a8fc1879e1a7d296f16ef8b758588ece5fb4e574c489c8671754947678"

      def install
        bin.install "xcsh"
      end
    end
  end
end
