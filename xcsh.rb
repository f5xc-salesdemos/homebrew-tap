# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.77.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.3/xcsh-darwin-x64.zip"
      sha256 "eb700be52f9f2ac72d555d2542ad16645b7f6636b179fc6b9b10ccd1fb757fe9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.3/xcsh-darwin-arm64.zip"
      sha256 "7fd9a34aa5c56c0b05d65fa86ac8ae203db9c62583a9b3fee90b6b1ffd7c5ea6"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.3/xcsh-linux-x64.tar.gz"
      sha256 "14e8de5aa10d35fae7ccbcfde18852f7bb823112135e259dfd3017004bb71bd1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.3/xcsh-linux-arm64.tar.gz"
      sha256 "0023650cb4e0cb7b0f5e25752203992f1d692158c4a780b81784590dd62e4793"

      def install
        bin.install "xcsh"
      end
    end
  end
end
