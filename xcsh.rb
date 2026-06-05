# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.9.0/xcsh-darwin-x64.zip"
      sha256 "ae1382a0a28b26e42ee89f2488fc16ecda43ea1dae7b917aaa975da3430c895d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.9.0/xcsh-darwin-arm64.zip"
      sha256 "3412390276a1eafdf0f4f7baecf99e38719e9a70c29b601db867e0f479eea500"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.9.0/xcsh-linux-x64.tar.gz"
      sha256 "4c95112993828ee03f4e9b617aee8c25dde85f793a0feaca9da06b243dfe6388"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.9.0/xcsh-linux-arm64.tar.gz"
      sha256 "ceef092a46b8c593d88823f7f2b36326ef8d15cf7a0d5b75e38ceb0e37ee4bcb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
