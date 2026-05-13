# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.63.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.1/xcsh-darwin-x64.zip"
      sha256 "ba387bef954f80cd7cd25a57dc2383382505afae2a462d61248f542f9073484f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.1/xcsh-darwin-arm64.zip"
      sha256 "bdb9a95010309032f46a7c28d93c4c54a2f6bca414e7d68e2c65e01459d6087e"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.1/xcsh-linux-x64.tar.gz"
      sha256 "06a7bcfae529b8bcc98a803851d7ba5b07b20221815c82e94e10f2c74a2ceb0a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.1/xcsh-linux-arm64.tar.gz"
      sha256 "74d496843e58bcdfb5a35e7702cfcc69742adb7d90f5acce362b6e13052b9bcc"

      def install
        bin.install "xcsh"
      end
    end
  end
end
