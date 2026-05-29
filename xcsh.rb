# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.87.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.0/xcsh-darwin-x64.zip"
      sha256 "69e8d1f624bb29fef73179b9e8726e28b3ee8586f38a2cf12f29ac9cf5659764"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.0/xcsh-darwin-arm64.zip"
      sha256 "5689fc63665bed0701606ec198f124c0d23819fca624a96b8a0e0ab51592c230"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.0/xcsh-linux-x64.tar.gz"
      sha256 "8f3f3d6b78a95165839db01297e6afcfaf499ff832bf93edacf8d6914568aedc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.0/xcsh-linux-arm64.tar.gz"
      sha256 "1a6155e230b5479e0a6db5810cbbd462ae564724f22df0076efe2c34a2508f9a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
