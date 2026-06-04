# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.7.0/xcsh-darwin-x64.zip"
      sha256 "24ee94fc5fe52c09262c268dbd5c79d257e06155c9e5177d7062e1071a439fcf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.7.0/xcsh-darwin-arm64.zip"
      sha256 "4181d29aec3d6960fc635caefe7dac16d3553b91a20ddf632241e4e5807e2bba"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.7.0/xcsh-linux-x64.tar.gz"
      sha256 "b36c4d13d71950a847f96f4893f43917b65d24a0448c9345fc38c354dbdcad7c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.7.0/xcsh-linux-arm64.tar.gz"
      sha256 "ec8c9dc7649135144f735282940ae5b3cb4a33559ff3457dcd6fe29aad832d73"

      def install
        bin.install "xcsh"
      end
    end
  end
end
