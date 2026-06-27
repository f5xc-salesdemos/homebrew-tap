# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5-sales-demo/xcsh"
  version "19.51.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.51.6/xcsh-darwin-x64.zip"
      sha256 "c78f7cd7af75b70eabe8e51d9ca307667d78f2d076d9ceccbd293148b72c74ed"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.51.6/xcsh-darwin-arm64.zip"
      sha256 "f3d2bb9fa3ccb5f5db0bf11955974b6efa7c04d8e4c63616197a4ce027f8014a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.51.6/xcsh-linux-x64.tar.gz"
      sha256 "ada41c989c93a80b7f0b1d176c61d8f358db0002b4b5aa9b62bead1479d5481c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.51.6/xcsh-linux-arm64.tar.gz"
      sha256 "ea4920db36cb9db480465f451b6093bbc6de0e09e01c19f034dcd7ba3d35aecd"

      def install
        bin.install "xcsh"
      end
    end
  end
end
