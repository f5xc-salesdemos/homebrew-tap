# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.30.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.4/xcsh-darwin-x64.zip"
      sha256 "51e7996e5e89d12657c7007c7e37e4aca7d144d6ff10b7e5c02ca5779df681d4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.4/xcsh-darwin-arm64.zip"
      sha256 "0879ae47ce7a3af6dfd6196558d678aad68cf0be9f7ef082d6e83761a1daa319"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.4/xcsh-linux-x64.tar.gz"
      sha256 "ea80184c28432d0fe0fbd12b23d0bd72197351e6ccc69e3dd0fa4c0f10654c39"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.4/xcsh-linux-arm64.tar.gz"
      sha256 "be88f1596fe9f8d0b5d965ab929a0d29fb4be0fd21fc8b475eebbe2341a87c95"

      def install
        bin.install "xcsh"
      end
    end
  end
end
