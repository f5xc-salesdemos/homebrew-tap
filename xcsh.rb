# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.9.0/xcsh-darwin-x64.zip"
      sha256 "e77665fbc86f21ca24936f07a8e6855e63fe04d2ba51feb188ea4bc7f1fa7fd6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.9.0/xcsh-darwin-arm64.zip"
      sha256 "67a773626f6a470835699b7097dae2ee521e9062ea4e2e83bab0a76f6cd96740"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.9.0/xcsh-linux-x64.tar.gz"
      sha256 "3e4056d15aaa6faad9f878b20e9ce0818abc19de4db8d0324db358ed27e489ba"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.9.0/xcsh-linux-arm64.tar.gz"
      sha256 "35a5a72e802c803c574ff77d46093df9e679ce1a751495e10f8ac5f4a33c72d2"

      def install
        bin.install "xcsh"
      end
    end
  end
end
