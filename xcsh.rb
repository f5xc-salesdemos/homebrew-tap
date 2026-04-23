# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.11.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.0/xcsh-darwin-x64.zip"
      sha256 "4a53bbef599e8379b76576d213755d99a8ce242521de2cf6956984903b714c3b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.0/xcsh-darwin-arm64.zip"
      sha256 "4b58307fdf10c67064e2c4106ccb1998c919d66a998c03b0d32568e2dd2a1a96"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.0/xcsh-linux-x64.tar.gz"
      sha256 "094bf4280dfe823a1ea084e8d23438568376d0a6ee10056105c242a5a2d778b9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.0/xcsh-linux-arm64.tar.gz"
      sha256 "84df69073a63102d9aa679e5bd313424001f9686c75224369832b1dfe65d193f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
