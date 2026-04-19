# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.0.0/xcsh-darwin-x64.zip"
      sha256 "bf3eccc755e1d1b60f39eba370d5ddd89adafcaa934d39f28d518bfeb253e4fb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.0.0/xcsh-darwin-arm64.zip"
      sha256 "a7c7fcd48ada2dda2fb9fe34c99c185df8d1057adf4984feb852f95932ceee17"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.0.0/xcsh-linux-x64.tar.gz"
      sha256 "fb7cbb6684e031e7dfd90e2419a534656f58e521f9a7ab8db5ca544f1347ec68"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.0.0/xcsh-linux-arm64.tar.gz"
      sha256 "e87d4864b20e78426874045027729d9e56e1fff841a09a66f42bb6627be3f897"

      def install
        bin.install "xcsh"
      end
    end
  end
end
