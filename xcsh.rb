# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.11"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.11/xcsh-darwin-x64.zip"
      sha256 "f5f08ff9ae1aaeb7266b43e57a5c59d1aee3ad3944ed5cc122735f960498ded9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.11/xcsh-darwin-arm64.zip"
      sha256 "97a6575efbecb8204291e98225a04b8545febfa6834ac87ec5752e99cfb6db8a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.11/xcsh-linux-x64.tar.gz"
      sha256 "baf24ab161db448cac785a5c542b7c8d0ae9e9ad18d22a230f16559845c735c9"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.11/xcsh-linux-arm64.tar.gz"
      sha256 "19b87706f20de2979fdc5563454f86f11884291d64205646e514afd0e19c9362"
      def install
        bin.install "xcsh"
      end
    end
  end
end
