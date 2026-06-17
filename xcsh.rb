# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.34.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.34.0/xcsh-darwin-x64.zip"
      sha256 "da291b5c5a76398aacc7590d3ef9ee1770545e6925ee857243e2d84c225f1b37"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.34.0/xcsh-darwin-arm64.zip"
      sha256 "1aa5a488d7556ef131b5015118bac8f5474dedd79281fb8dab6e1f2f23e92cbc"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.34.0/xcsh-linux-x64.tar.gz"
      sha256 "c92b1978352dc67be0bcf86d2baa679d3823d3887af62092cb45ffe4f7bfe767"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.34.0/xcsh-linux-arm64.tar.gz"
      sha256 "0976de9c16562967b5c30a617301e07469df03d5441280576cba2c88ecf0873c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
