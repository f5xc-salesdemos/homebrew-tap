# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.42.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.42.0/xcsh-darwin-x64.zip"
      sha256 "753bdec15d493097f6d1456186d5312b613b0d55e239b1ed51702fc6fc45317a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.42.0/xcsh-darwin-arm64.zip"
      sha256 "9fd2e61e060f7afa5f187136dfee83c6db68399b56637140969f314828c22b65"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.42.0/xcsh-linux-x64.tar.gz"
      sha256 "4d88f0e9c8013e86747f8dc6ca7d723cbd09d22ac657a0d91ccb438ce48f403b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.42.0/xcsh-linux-arm64.tar.gz"
      sha256 "17daa4e0c52230407e4a3b1f0f3202779d4437b21f4febbcd2e2ce7f3ada6a0e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
