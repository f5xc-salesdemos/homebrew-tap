# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.0/xcsh-darwin-x64.zip"
      sha256 "0426d334d80bca43ff6d2a7732616da3b6e02fa1815a5b2e860a646c6e768158"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.0/xcsh-darwin-arm64.zip"
      sha256 "42d29b9c27fde182d8ade2fdea38741a9e73e131b823561f64be4991b7de7b51"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.0/xcsh-linux-x64.tar.gz"
      sha256 "3f1a31beb14e4b931723f1d9963417bba36eb62d9a28d801ec4acec06f65dd17"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.0/xcsh-linux-arm64.tar.gz"
      sha256 "0507a823e37aabb3f09f00c44997b62d3232146f3d794e0bc96aeb65c947d222"

      def install
        bin.install "xcsh"
      end
    end
  end
end
