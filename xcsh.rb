# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.50.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.50.0/xcsh-darwin-x64.zip"
      sha256 "5982676dc0c5342c6b98186adf476cfe7a1e7dddfbf267b29819d9df81f39a9f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.50.0/xcsh-darwin-arm64.zip"
      sha256 "a7fbc15739376c23f9db85564ce0af88981f717a029bc474e975155aae40d8b5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.50.0/xcsh-linux-x64.tar.gz"
      sha256 "28c360880d001ed7de5954b9c454e5c2c2a66484fb0f74802ebce2942c02faa6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.50.0/xcsh-linux-arm64.tar.gz"
      sha256 "0a15239064dd4a1e50de348153600edd7f1fdab19987721aa75bd11e5badc0e5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
