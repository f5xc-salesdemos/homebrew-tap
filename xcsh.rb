# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.47.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.47.0/xcsh-darwin-x64.zip"
      sha256 "393907df3ebf977e6e4ead042742f7a311f00971a0e76e4bd95300b6cdb2d4d1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.47.0/xcsh-darwin-arm64.zip"
      sha256 "9855e8ca117443fdf73c9c8403022da00b64a8b336054d1628f8c0a00915752a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.47.0/xcsh-linux-x64.tar.gz"
      sha256 "28f2003c26c9eacab8c8cc35e52c7244da96ec2d0cda43553729afb271a29029"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.47.0/xcsh-linux-arm64.tar.gz"
      sha256 "915f98c57e1c5ec319bf267e3018ea65d61edc9134d805e5c354f55d2e69a6e5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
