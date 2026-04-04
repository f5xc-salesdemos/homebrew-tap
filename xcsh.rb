# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.13"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-darwin-x64.zip"
      sha256 "7c106a96e6b0acbe1d377dd639f395aaeebcad2bb3e5cfb6e4e5f0e01ed6bffa"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-darwin-arm64.zip"
      sha256 "c384cd02cb95be3503be8c0522e7c4b062f2a1cce9617df22dbd0dde78d2e2d3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-linux-x64.tar.gz"
      sha256 "9a01ecbbef84958da64774831ab3ef1bd8b60702d9f8621ab31baa4900240e59"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-linux-arm64.tar.gz"
      sha256 "9d4fcc54fb61802ff4fa7d1659806adab4c1a13523777173597e5fab9e0be140"
      def install
        bin.install "xcsh"
      end
    end
  end
end
