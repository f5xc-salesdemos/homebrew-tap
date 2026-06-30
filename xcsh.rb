# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5-sales-demo/xcsh"
  version "19.53.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.53.0/xcsh-darwin-x64.zip"
      sha256 "246dd9629400287e24b573ac20b54066e3c7dc72e99fea5921550b70fe853589"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.53.0/xcsh-darwin-arm64.zip"
      sha256 "9db124f42771b6b3c19acfd084cfb15c94235fa29a54dfcdc568af77acece8a9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.53.0/xcsh-linux-x64.tar.gz"
      sha256 "b6285df26b3cec8b4b98025af26bfe489301b32a48ecb073950b7fe1f7ca9ac8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.53.0/xcsh-linux-arm64.tar.gz"
      sha256 "6c791f919c2317fa3e1a69f60a9b942c59ef337e2a92153e3c9c0fc82c2af043"

      def install
        bin.install "xcsh"
      end
    end
  end
end
