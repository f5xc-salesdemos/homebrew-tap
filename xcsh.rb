# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.1.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.1/xcsh-darwin-x64.zip"
      sha256 "d40c3600c2f8cb4f3cbaf4153ac2e546eb093f1871cefdc996bbfab59d6fc763"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.1/xcsh-darwin-arm64.zip"
      sha256 "cf4b6b4f464868c7333d0a2436319f0b0bdf27c34755af4c622176e0004c7f2b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.1/xcsh-linux-x64.tar.gz"
      sha256 "7be423cae2f17044725d8d54d290e668f02072a9f6fcd1838e089548158f5f3a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.1/xcsh-linux-arm64.tar.gz"
      sha256 "72ddab4f26ea552593144715fee633852d8635c5b11409eb92f7c7e96cf0230b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
