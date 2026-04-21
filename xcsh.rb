# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.5.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.2/xcsh-darwin-x64.zip"
      sha256 "9475b0bc4bb1eff0ade27dc97f3e7453d28c1dc7ffb3f36c40b7406fb0bfeb68"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.2/xcsh-darwin-arm64.zip"
      sha256 "d8fa216c625442834b3c3650d6b8b94cb47c6f4490e91076512ba6ea273201ae"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.2/xcsh-linux-x64.tar.gz"
      sha256 "f5a4f2d23a8523cb25bc0f368b8487cad0d4591a8689d1572f96d30db3559c1c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.2/xcsh-linux-arm64.tar.gz"
      sha256 "a422692dc439451534238e2734dfd7296f681aed8091465b3766f1a8a321b77c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
