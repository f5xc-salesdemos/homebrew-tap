# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.35.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.1/xcsh-darwin-x64.zip"
      sha256 "282b7ffa11e2d61b655e4f78ba27d62b23528c9b8f87b7a825ed8389c75a51ba"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.1/xcsh-darwin-arm64.zip"
      sha256 "2dc1cb0928ee7f19ae0de61d8021e4f401aa7518bf096bc54df5a68e6af5df94"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.1/xcsh-linux-x64.tar.gz"
      sha256 "19b741171e1c8610d1338a3f615ad55b24ea3cf6a9f835121d112afaf72bd0bb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.1/xcsh-linux-arm64.tar.gz"
      sha256 "1c858b7dec9433ba6c5cdb6eb1e36878085ebd5b87a87b5d592dc3150ba50206"

      def install
        bin.install "xcsh"
      end
    end
  end
end
