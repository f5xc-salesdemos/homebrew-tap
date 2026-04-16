# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.1/xcsh-darwin-x64.zip"
      sha256 "3fc2f05c923b799743d73ab8d0acc13c945def96ce41495a9d99a9456ed2380b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.1/xcsh-darwin-arm64.zip"
      sha256 "2cd0b9624fbb7b584bc8dfdd82c07732e156eddecd94c225ca962b6b75e531fd"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.1/xcsh-linux-x64.tar.gz"
      sha256 "67b7111092560c1c6718dad1a2b59f1dd7bcac5c627c191e5667588f9c42011c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.1/xcsh-linux-arm64.tar.gz"
      sha256 "ecd3d5c361b0b218f90ac5d7eb4c1c00dc748098098b4bce1e4b6f4bf7993806"

      def install
        bin.install "xcsh"
      end
    end
  end
end
