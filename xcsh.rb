# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.92.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.92.0/xcsh-darwin-x64.zip"
      sha256 "9f640bd3c31a68e106cbc13aecfac0b7c0082a0aaf2d6b515f01c4bd246f543a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.92.0/xcsh-darwin-arm64.zip"
      sha256 "000f6aed79924f3c3e354da77ff3994ec39b4a458b6c736d2daeac9ec6ee0696"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.92.0/xcsh-linux-x64.tar.gz"
      sha256 "0f5c0d723e523d35239bb24bdd9d377139719ac8b4b809fa7519f60e82b0516e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.92.0/xcsh-linux-arm64.tar.gz"
      sha256 "7c1c45ad0626023cde05fb6dc3a716d1f943101683136a59d2cf1e3b4f4e1864"

      def install
        bin.install "xcsh"
      end
    end
  end
end
