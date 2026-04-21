# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.4.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.1/xcsh-darwin-x64.zip"
      sha256 "e0a186c470e20780ce07ec680ad01a7ed1ec53209961ad1880f351a63b572122"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.1/xcsh-darwin-arm64.zip"
      sha256 "9657ddd43ce5d57ba238a313b028eaa37cd5dde97e1585537b9ae87ca2c1a72e"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.1/xcsh-linux-x64.tar.gz"
      sha256 "349e3bc2573f2d9cabc95e4c8d8f4477d57774afd92cd4fd2864cae1183df62b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.4.1/xcsh-linux-arm64.tar.gz"
      sha256 "b18d2307b2c9058515d7eef5074baa042223e622dba1441035f41e41912fd4b5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
