# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.29.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.4/xcsh-darwin-x64.zip"
      sha256 "24752811665b2dc4f6e34fc771b8bae2659ee36c2faaaa3635d828b83228b61a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.4/xcsh-darwin-arm64.zip"
      sha256 "c7c3d5844e66e28fe9043ec535ca9fc178d0580df7320330a46e0c3fb722058c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.4/xcsh-linux-x64.tar.gz"
      sha256 "07f0ea827aacc7228807e5eae953f45de0a40692a1f7e0b46ff8fbe3226d6a75"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.4/xcsh-linux-arm64.tar.gz"
      sha256 "3ad2b216c3722749ca89dd3a1fc403c37681a065b96514c12ff8c567fd194d64"

      def install
        bin.install "xcsh"
      end
    end
  end
end
