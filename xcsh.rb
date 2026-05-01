# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.30.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.2/xcsh-darwin-x64.zip"
      sha256 "403375550edc1bd6ee5beec3cb36ec2450dcc986b16b7cac81ca5257be30a9ce"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.2/xcsh-darwin-arm64.zip"
      sha256 "05c8811750d404146144f35b9bace0f6a2584445c46d5969029e2d0cb9793bcb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.2/xcsh-linux-x64.tar.gz"
      sha256 "df29400d0956e742e5ca6dc52eeb95266d2d15f7620f3e5042f0ecdfe2124b7d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.2/xcsh-linux-arm64.tar.gz"
      sha256 "b48d041e4832672c7ffa2da98152a44d7b3c58e8ceddab2f18d1c0ba85ac7a0d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
