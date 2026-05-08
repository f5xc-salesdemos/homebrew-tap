# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.49.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.1/xcsh-darwin-x64.zip"
      sha256 "7c8ac68b1c620ec84a3cee3abfee344ca33afd2ad1f21cbecf6863ab1a7a32b7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.1/xcsh-darwin-arm64.zip"
      sha256 "dda4ac0cfb62a54d2f00a4200d2a748a6b2a66a7d380055fe60c5d6bb53a9053"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.1/xcsh-linux-x64.tar.gz"
      sha256 "af3bc82bb4b3b49cd80eecaddc35cc6a5d0e0cb7d3b4d78f4a206f4d7b612fa1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.1/xcsh-linux-arm64.tar.gz"
      sha256 "2260454b27284717dfcd351da48467e3f44b44d4b3ebd6376b22a3c331505a9f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
