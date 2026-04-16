# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.0.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.2/xcsh-darwin-x64.zip"
      sha256 "62e6db594674ebde82a1c936a064cbb9b1ee1a8714a636b176335ca90480e46b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.2/xcsh-darwin-arm64.zip"
      sha256 "a0d6cf0167d85eb49176f232b069c0ed898007eac8b25a9823a403d34c00e94c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.2/xcsh-linux-x64.tar.gz"
      sha256 "62e689e5db271b54e066c71aede0f12ba9d1f76566ada6d804f33a99a8f3c32d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.2/xcsh-linux-arm64.tar.gz"
      sha256 "d32ff52529b8c074f124ce43a76517cd8d987ba2abd10f330b6f9e42f14b1250"

      def install
        bin.install "xcsh"
      end
    end
  end
end
