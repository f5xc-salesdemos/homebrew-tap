# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.45.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.45.0/xcsh-darwin-x64.zip"
      sha256 "abcd95d0277228803452480dfe0aa84f63b1eba89c71d40e813af721ce76cf6a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.45.0/xcsh-darwin-arm64.zip"
      sha256 "18be4c27e2db81d1d7b4f8c1ab2d991ce455737f448ac6c7da412aacac2c7250"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.45.0/xcsh-linux-x64.tar.gz"
      sha256 "3790c2ec12740fe31cd74327e6f7faae3ff7ea4c4af31fda2cf2a3a98dffb985"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.45.0/xcsh-linux-arm64.tar.gz"
      sha256 "e07c150254a856b6d1e56c2e459a80bf9838fc6567f4a10384411ffe84601147"

      def install
        bin.install "xcsh"
      end
    end
  end
end
