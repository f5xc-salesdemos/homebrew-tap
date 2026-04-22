# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.7.0/xcsh-darwin-x64.zip"
      sha256 "345b87181b09a83ebe887e3742d8c96ba6ce2726ea1287d470d4c057558c0dcb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.7.0/xcsh-darwin-arm64.zip"
      sha256 "839a7982bd0fc2d05ddaa8c5ea4216530c6ab5fb14fa8fd9b7361d64cf32ba98"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.7.0/xcsh-linux-x64.tar.gz"
      sha256 "bf16b8eb10abe5652e13cc13872cb5ec537eb95a43e3bf3e3e6a5417d2434807"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.7.0/xcsh-linux-arm64.tar.gz"
      sha256 "30b2cc0d8e69f158cba4da7f4adeda5f290f7e773cdd013a63a45e1eb7b66aa5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
