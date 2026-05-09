# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.53.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.0/xcsh-darwin-x64.zip"
      sha256 "aecaa4a2d5e16474ce418937e070676bf30ec02ef89787bc18fd7a3bf70e7314"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.0/xcsh-darwin-arm64.zip"
      sha256 "757b56f60ca23771ee2a1f3cb239fc25b0e32b2c66d3cb4d0e072eed02ae206c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.0/xcsh-linux-x64.tar.gz"
      sha256 "1a353c93854eb1a9d9aaf988f4a3483295c66f8115bf6eece70e46f6a2828660"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.0/xcsh-linux-arm64.tar.gz"
      sha256 "54a0bfc94df9da3f5c81aeb8af4a228872b8d5f67ec40eb524b89bf18dbfcb05"

      def install
        bin.install "xcsh"
      end
    end
  end
end
