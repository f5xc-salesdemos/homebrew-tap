# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.10.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.1/xcsh-darwin-x64.zip"
      sha256 "461ca45ab8ecc2236fe65dc0cac8b77fc3cebcb77e08cff59d5d61a8a3fedafe"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.1/xcsh-darwin-arm64.zip"
      sha256 "3fd6e2aab46ad22383101b2d94fa4e5f080cefdf8a8fae1832dfc8b4da564aab"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.1/xcsh-linux-x64.tar.gz"
      sha256 "5cd96e2fac50248b696e1730e33f12a4519ad6924a6acb8a335f687a5c1dae3d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.1/xcsh-linux-arm64.tar.gz"
      sha256 "0ad13c6eca7321ebdc20860336f76eb90481b0cbf649e38455d2a44ff68c17d4"

      def install
        bin.install "xcsh"
      end
    end
  end
end
