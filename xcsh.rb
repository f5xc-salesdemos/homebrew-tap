# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.38.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.1/xcsh-darwin-x64.zip"
      sha256 "06bb9912537113fb3961fab710a7abd4b2e40aa12add56ad82ada92d8cf4977f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.1/xcsh-darwin-arm64.zip"
      sha256 "0da36f5548508ee8850951d8201556f32866bd8ee3a9e83fa49d6b5c8b3a8056"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.1/xcsh-linux-x64.tar.gz"
      sha256 "07a5ae139b116033ccb597773ce389f4b3866b784665c94db750292295b2f6f5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.1/xcsh-linux-arm64.tar.gz"
      sha256 "336fe1910eb0d2bb8e141e772673d50e2553e3dd570f0d367cf49fb37206ea6a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
