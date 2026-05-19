# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.72.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.72.1/xcsh-darwin-x64.zip"
      sha256 "2d655857126955089c55b5c43b5423b9e26cf92204d9f2df0f109364c9e7d5af"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.72.1/xcsh-darwin-arm64.zip"
      sha256 "6d953fb019bcd86eba2fb0cafc05ea42ee4d488965318803553331e4e9e76706"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.72.1/xcsh-linux-x64.tar.gz"
      sha256 "75c408486e9afd3a8713ae401fbc81d41cf4157b1b3a2be5dbec1e77a666aab2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.72.1/xcsh-linux-arm64.tar.gz"
      sha256 "0350ed7bb8c9d897da867af64eecc74734e1bd3343954f5289a9491336ccf479"

      def install
        bin.install "xcsh"
      end
    end
  end
end
