# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.13.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.13.0/xcsh-darwin-x64.zip"
      sha256 "bd8063b7f308abf94d13a878f208c6cd8229c2d7b50a0fb0365a442b03065caf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.13.0/xcsh-darwin-arm64.zip"
      sha256 "f8a6652b2245ebbc0447d7dc2b349e372ed8e1e0e63838d889654a917a433366"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.13.0/xcsh-linux-x64.tar.gz"
      sha256 "9b3421bea15c290eec2b75ae2eb48198696ae7077482d378d3bd8327ed589ca9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.13.0/xcsh-linux-arm64.tar.gz"
      sha256 "b000204e51ca395eb97646234d73abe4e9c5377533f8e9e6c8a80f05f86b05b8"

      def install
        bin.install "xcsh"
      end
    end
  end
end
