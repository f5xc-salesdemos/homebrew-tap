# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.0.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.0.1/xcsh-darwin-x64.zip"
      sha256 "6b03242e887033f8f2d2a49a34f1e330c0031502d09d42451fc7708a8bfbf3ab"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.0.1/xcsh-darwin-arm64.zip"
      sha256 "5315d79221ba8a5d3ff4053fb63b2ee965d2c65daa5bdcdd3a72550250f5b666"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.0.1/xcsh-linux-x64.tar.gz"
      sha256 "0f67d1d6b9f14863a5407c5e6716600a5db5614c602a0fd925335e6b768fc800"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.0.1/xcsh-linux-arm64.tar.gz"
      sha256 "4976f267ccb2abdb6f033005d7d100db903483673afa5071dd89d92e66c485ff"

      def install
        bin.install "xcsh"
      end
    end
  end
end
