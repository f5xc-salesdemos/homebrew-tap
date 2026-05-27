# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.83.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.0/xcsh-darwin-x64.zip"
      sha256 "935f5ca187ad5a66e1bc3021912067e264b25f80537c064916e729984161e431"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.0/xcsh-darwin-arm64.zip"
      sha256 "44770f1c4513dfcf28235a60492c1d924180fb188152bbfe7dca034fe550fabf"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.0/xcsh-linux-x64.tar.gz"
      sha256 "6aaab8545cebb6e247f179a06148ecd5a68183675ed474861822d885b08a0d57"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.0/xcsh-linux-arm64.tar.gz"
      sha256 "d63735e90e0e15b0f7498a397b3a3c311d7f50258b94ad456636240c27727382"

      def install
        bin.install "xcsh"
      end
    end
  end
end
