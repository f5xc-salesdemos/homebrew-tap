# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.31.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.0/xcsh-darwin-x64.zip"
      sha256 "066f4c009da4df4b03b2344bca46f1e64a5b37dc66779c0530041f016badbcc7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.0/xcsh-darwin-arm64.zip"
      sha256 "4d1a0e882976308f10e8587eeeb7649f54fa224b1b7f7fd43ea6eb6b3a573273"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.0/xcsh-linux-x64.tar.gz"
      sha256 "47682e597e98390729e8a11ff621c64604c9733cc8596f4fa1a773154a87df23"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.31.0/xcsh-linux-arm64.tar.gz"
      sha256 "2ef46a45c5c13dab65f0e93304e0e8359a464d62c4cf2640a667fd30026e67e9"

      def install
        bin.install "xcsh"
      end
    end
  end
end
