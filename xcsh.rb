# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.31.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.1/xcsh-darwin-x64.zip"
      sha256 "6fd67f681f97e1af725f4747631ed8a16bcfe3179f78c86471a97162daf728b8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.1/xcsh-darwin-arm64.zip"
      sha256 "c3da47077211f3bea8a72d103d99d623c86cebc9fc8c382cc00da2903b58d8eb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.1/xcsh-linux-x64.tar.gz"
      sha256 "6f98c5eb5d30dd48f6f09142bb87059e03118aea735aed40dc23f31ca95c7a94"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.1/xcsh-linux-arm64.tar.gz"
      sha256 "1511cd6c890ccde7568f3f6ec4e89ce9c92e98d5689dfc0615b6284b98aa7317"

      def install
        bin.install "xcsh"
      end
    end
  end
end
