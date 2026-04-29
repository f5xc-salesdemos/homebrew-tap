# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.27.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.1/xcsh-darwin-x64.zip"
      sha256 "e542be9022aad806bf34fd5861bce99ee3a43bb6eab713a6877e655484603484"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.1/xcsh-darwin-arm64.zip"
      sha256 "7eb5e48f87bcadf3120679656a221d9c8175456e424d909b4989b3828b9f1475"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.1/xcsh-linux-x64.tar.gz"
      sha256 "1ad7f788c65c5b8a2c11f71a63baff99c89abed01e27f1266ccf20d2b7c65bef"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.1/xcsh-linux-arm64.tar.gz"
      sha256 "4727209e160ea222b5a658fcb1772fd4e496c3cbaaa397d8a41a5a480334187a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
