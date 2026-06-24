# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.44.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.1/xcsh-darwin-x64.zip"
      sha256 "6515f1af372a1fa498e500f3020b9a46263e71beae2a94c946993e47441ec0be"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.1/xcsh-darwin-arm64.zip"
      sha256 "07bb3ddd6109dc561538384116eb117b14974a2b15285b2c026d6c06200776a9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.1/xcsh-linux-x64.tar.gz"
      sha256 "5478e197c4bd1ef2d5c0b56ce1f0ade18e223169b142c6c266102053cf890e56"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.1/xcsh-linux-arm64.tar.gz"
      sha256 "68a097d6b037f1c98e2d2d70d8167a71a827ad35c836a717e6923f0daea258b3"

      def install
        bin.install "xcsh"
      end
    end
  end
end
