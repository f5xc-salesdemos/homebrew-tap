# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.49.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.0/xcsh-darwin-x64.zip"
      sha256 "2231af8fbdd7ef1875efc2b296f06d2b4739d4d465ad3111769ea5751d09b98f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.0/xcsh-darwin-arm64.zip"
      sha256 "43455b11c5a5bcdd97a99495cc54a93ab453941e6f795eb320c2403bd84d66f5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.0/xcsh-linux-x64.tar.gz"
      sha256 "40b6463a18a6de6b77553ac3f9f54b2ec98984f4d2fc3ba37efd641992159afb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.49.0/xcsh-linux-arm64.tar.gz"
      sha256 "5fff42c78f2b123581c135ea4f9bc6f206f4d6cb4d4a6e9af27182e693e72b06"

      def install
        bin.install "xcsh"
      end
    end
  end
end
