# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.2.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.1/xcsh-darwin-x64.zip"
      sha256 "338105bf51d0fee34231449a426c2163443f6f100050677bc484ba6e3545348d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.1/xcsh-darwin-arm64.zip"
      sha256 "87143c7d948b42fa81a47679fd57fd9463123731fa6fb0f8a65f966e846a7f67"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.1/xcsh-linux-x64.tar.gz"
      sha256 "f2efd83a3a9737b81b3c163025533432c206ecf69a30e339dff1822faafbd251"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.1/xcsh-linux-arm64.tar.gz"
      sha256 "6065fa5239fb9635adfc6d03a9d510be4d68e48aac72607ad4bad9c7a4c34ae0"

      def install
        bin.install "xcsh"
      end
    end
  end
end
