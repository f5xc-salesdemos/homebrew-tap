# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.88.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.88.0/xcsh-darwin-x64.zip"
      sha256 "b966907f8419fbe3fcc57b1a1074c792f58ab66e33b03ec12cdbd27b24b1e578"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.88.0/xcsh-darwin-arm64.zip"
      sha256 "e2316a43af0130af5008bc374d4c9d675b8d5ba0249e789e3cee603ebf236166"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.88.0/xcsh-linux-x64.tar.gz"
      sha256 "5e2cf44918d5f2ed4d5e70af4b925b873cfd09153be59deda45637c2acbd18e2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.88.0/xcsh-linux-arm64.tar.gz"
      sha256 "3320c0d371b538be064133e94fcb3152a0753466f2ec5e758ed5d9b3ae68b461"

      def install
        bin.install "xcsh"
      end
    end
  end
end
