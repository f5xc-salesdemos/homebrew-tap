# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.2.0/xcsh-darwin-x64.zip"
      sha256 "23e5481389acc655b0ffc2b0299e8e30284b1d6c48456fd891811cab62fa6c58"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.2.0/xcsh-darwin-arm64.zip"
      sha256 "8c87e955ad999de63ee2687079baaaf7d0b40e5a19a531afe1d1bc2a8d4bc9c1"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.2.0/xcsh-linux-x64.tar.gz"
      sha256 "6aad38c27a25fabffd0325685b7b854a168bd9f4f39f2bed69365565cc2eebd2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.2.0/xcsh-linux-arm64.tar.gz"
      sha256 "544fe86877a1cfd962c9fa28bee66bf260756cbe94753449505cc118516f47d6"

      def install
        bin.install "xcsh"
      end
    end
  end
end
