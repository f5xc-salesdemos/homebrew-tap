# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.6.0/xcsh-darwin-x64.zip"
      sha256 "2306c403310d0779f8bd0821b761adb8b6f287ceb326007037cdf0c823273614"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.6.0/xcsh-darwin-arm64.zip"
      sha256 "dc335c4cb67486889fa060bcaa7a9fce4893b534380501edadfb9c61c0b25914"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.6.0/xcsh-linux-x64.tar.gz"
      sha256 "479177865da39ac1b4e90213d54eb3141fe0267819e44df639902b4157940ce3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.6.0/xcsh-linux-arm64.tar.gz"
      sha256 "77aaeb18db2123905c9dd78bcf34e84a8b936f454431692a3c0b565f34b28d82"

      def install
        bin.install "xcsh"
      end
    end
  end
end
