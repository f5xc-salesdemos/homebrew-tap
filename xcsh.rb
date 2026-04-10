# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "14.6.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.2/xcsh-darwin-x64.zip"
      sha256 "044a8a997f542fa4eb93708dd9bf0ab321590c2eeede9080f6ee1a1aadda72b6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.2/xcsh-darwin-arm64.zip"
      sha256 "25ef4b345a5d41187e810c0f6cb9d2c6301230c7ccc6959351f726bffde57d34"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.2/xcsh-linux-x64.tar.gz"
      sha256 "af0b186ce059785f6f95ae60ebd584f0979488db56fdae15c70389b513fc4294"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.2/xcsh-linux-arm64.tar.gz"
      sha256 "9fe72d5669c56c9fe2eaa4cd8d1d9bb8e41f18d45e231d6308622d3c2480d443"

      def install
        bin.install "xcsh"
      end
    end
  end
end
