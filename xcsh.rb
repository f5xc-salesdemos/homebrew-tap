# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.64.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.0/xcsh-darwin-x64.zip"
      sha256 "43e8e4e5eb0ff8bad4fd2eddfddd38dace86d8cee6022aa634e4a01e29c66956"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.0/xcsh-darwin-arm64.zip"
      sha256 "6459f8a4723b3f98f1dd55074342217617f58831bc29a3aeeaf760eeb33b3f42"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.0/xcsh-linux-x64.tar.gz"
      sha256 "0722903ba6be7b2234090d0b345ac10d1d6458ece42d65e93166dd8b39b45c2b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.0/xcsh-linux-arm64.tar.gz"
      sha256 "f11d70adca7462435cf3c9f51b18e9f4b57cd13ff06eb0f33ca1b13e478e0b6d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
