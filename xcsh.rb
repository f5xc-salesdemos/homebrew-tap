# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.0/xcsh-darwin-x64.zip"
      sha256 "11e20148138b56fbf22f8d27afef008a10f6b26bd2612c0dc98f3648469dc40d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.0/xcsh-darwin-arm64.zip"
      sha256 "9564ff99b03adb777123a0ce8758ee262b7bf6ae3a30956ed44a34424bcc1b75"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.0/xcsh-linux-x64.tar.gz"
      sha256 "c10abf40d2a65094f98c49a2bf18d0d3ef138ff3ddca57d1bf093a09a8eadfa5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.0/xcsh-linux-arm64.tar.gz"
      sha256 "63a2080cfe11fe0f139d006f518668e74566fea9108c3387ae921b72ab145d69"

      def install
        bin.install "xcsh"
      end
    end
  end
end
