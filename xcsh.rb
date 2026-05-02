# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.33.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.0/xcsh-darwin-x64.zip"
      sha256 "9076347f22a9ce9af123c13e9fe01bbe1edc7d09ab53be3b1098706a6ff9269b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.0/xcsh-darwin-arm64.zip"
      sha256 "bf7892c1f19fb830b4e0d74397f1d10608b24a525605e1aeef38598cbf6983a2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.0/xcsh-linux-x64.tar.gz"
      sha256 "73bb84ec6a506b19fe08b447605ba6a31c8ddd5eeb388ad98de9aba744fd2935"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.0/xcsh-linux-arm64.tar.gz"
      sha256 "7c0734d955c57497d1ddfe96a5dbd955a1395afff09c662b8d8236a54da470cc"

      def install
        bin.install "xcsh"
      end
    end
  end
end
