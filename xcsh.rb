# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.18.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.18.0/xcsh-darwin-x64.zip"
      sha256 "5d74177451d8418603a49cb64e7770eeee6eea390d25cbfdfe49d5133b67488e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.18.0/xcsh-darwin-arm64.zip"
      sha256 "a9f5f12092c0bfd8f4a52351d6df53f0dfd8c7242a3eef4280bfab571d03453c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.18.0/xcsh-linux-x64.tar.gz"
      sha256 "19031e5de1cf500afeac1155273a4e37d1ca5dfd56cc3589c039bdc135c13cbc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.18.0/xcsh-linux-arm64.tar.gz"
      sha256 "38e46b4445f64d9b884c9b0d67abd53eabb5075e0002ec1049f97cbf544a64e9"

      def install
        bin.install "xcsh"
      end
    end
  end
end
