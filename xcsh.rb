# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.36.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.1/xcsh-darwin-x64.zip"
      sha256 "874b3711e672b9ef96ec5df23ab052d8ff6790a86d29bd4ab343426e4347dd54"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.1/xcsh-darwin-arm64.zip"
      sha256 "c7f53577a1a908710eadacf2834c7c9c0eb1a2ed12e84b85396a9ff6ccdb5efb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.1/xcsh-linux-x64.tar.gz"
      sha256 "08470bf30c7ec48805ad266f658ae5dd0fc48549a37d667828963b37c878c6c1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.1/xcsh-linux-arm64.tar.gz"
      sha256 "6f1297ce81a26b6572c8c26072fb44d93f9a58eaf247e73a5145f3e77db34fc3"

      def install
        bin.install "xcsh"
      end
    end
  end
end
