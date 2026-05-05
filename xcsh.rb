# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.39.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.39.0/xcsh-darwin-x64.zip"
      sha256 "682ed19cfe743b6951de5c0c4968949957348e9a1ab9a2713efaf3d6f7cbb345"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.39.0/xcsh-darwin-arm64.zip"
      sha256 "b659be019317bb860625e1eba82241d5e6fe3152689c5a2c5842fb6509b32e30"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.39.0/xcsh-linux-x64.tar.gz"
      sha256 "0838bc068b8787c89e00a31a0dbb4b77c38e5fb411c1379a85b1b58705152811"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.39.0/xcsh-linux-arm64.tar.gz"
      sha256 "71af31e81a519d79de40689218c047d6040ca3127d398c8643788db4c6e9c90c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
