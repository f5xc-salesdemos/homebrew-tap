# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.15.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.0/xcsh-darwin-x64.zip"
      sha256 "a160a6719bf4c9a3fb1f2a0cb847416d854eb7565593a28379048b7e4d1f6837"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.0/xcsh-darwin-arm64.zip"
      sha256 "57855fcd107e7c2024733dc1ef891c4f04ab34c1e13e4675e1d79a679f0a7cb1"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.0/xcsh-linux-x64.tar.gz"
      sha256 "ebc6cf0dfc39ff9e8e734408bc66162c11b8c53361a94ac470da8cc01a470271"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.0/xcsh-linux-arm64.tar.gz"
      sha256 "29ffce3cb1294902b0d9388e76a38c934ac8199cb3da640669284182ebd3ff0f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
