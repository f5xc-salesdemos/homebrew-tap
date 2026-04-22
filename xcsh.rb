# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.6.0/xcsh-darwin-x64.zip"
      sha256 "eeb59b61d9739bbecdca720e62cab498a4bc622b2512a5f20246f3ad57619666"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.6.0/xcsh-darwin-arm64.zip"
      sha256 "1ef8a922d21a226b8360e05284e4d93f0c5f06e562b79d6fc9ba6a2bb7cb6cca"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.6.0/xcsh-linux-x64.tar.gz"
      sha256 "d718b3bfb97860efa645bcf8ac7f06bde3aa7bd20a5379d6f6a37c9ab08eb26e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.6.0/xcsh-linux-arm64.tar.gz"
      sha256 "bf92d748f05decb7db0327854be0fbc423e4e3c0c9e187e85bd099c2384d1280"

      def install
        bin.install "xcsh"
      end
    end
  end
end
