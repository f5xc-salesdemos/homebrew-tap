# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.3.0/xcsh-darwin-x64.zip"
      sha256 "ad7567865071e3f26322fb160f19225961e8638d26671c7bbd33887ec1589fbe"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.3.0/xcsh-darwin-arm64.zip"
      sha256 "d0025a7200e479a954ef37944647217d22e59fc4112f3540d73d7a4bc3001e02"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.3.0/xcsh-linux-x64.tar.gz"
      sha256 "6cbbb40f9465f287d9924f1cd99e3c7fb939d0dc4c6aaa495753f8394ce290cb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.3.0/xcsh-linux-arm64.tar.gz"
      sha256 "43ba8fe20aa1a9c48f6d3e3f22c9d8ba1f7b41eabc71fd61ceda78303006df0e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
