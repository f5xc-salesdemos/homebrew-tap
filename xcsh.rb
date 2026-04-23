# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.12.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.12.0/xcsh-darwin-x64.zip"
      sha256 "8fd35f0ab86031d30ea4b1a18a86e53af282af34f110d5bf5f75b79cad555aa1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.12.0/xcsh-darwin-arm64.zip"
      sha256 "f5fe4572112591a883c81adf98893687ee3ff37f6aa64d235bf699e005894deb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.12.0/xcsh-linux-x64.tar.gz"
      sha256 "901ca73c9907d74b2425763d2fd5ed5a4defd13c23955c9924d5e8060027d445"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.12.0/xcsh-linux-arm64.tar.gz"
      sha256 "71effb3b040a4ed636541682fc3ce448c4eeee77640c422af208c3d97eb8d91c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
