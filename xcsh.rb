# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.91.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.2/xcsh-darwin-x64.zip"
      sha256 "560d79e4b33fb12d44af3f3e161c573ec38794100d15238c7cb04b0ef9dc69db"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.2/xcsh-darwin-arm64.zip"
      sha256 "8f5b9299e0aebc76c2b623e0e1d21308c79bdd76a880e0068735b5f4990048ee"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.2/xcsh-linux-x64.tar.gz"
      sha256 "d420d60c564db348f21d0ccd405b9fb4b532570d7cbe8c8cf0397c8e683b790b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.2/xcsh-linux-arm64.tar.gz"
      sha256 "07c4a6b9f929d5dfc15d8bfe7bbc5b9ca79aed99393cf9ebb33327d3a6ee8b1a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
