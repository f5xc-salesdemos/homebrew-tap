# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.14.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.14.0/xcsh-darwin-x64.zip"
      sha256 "d862250be47f516f6ae0f843ba2f50f9c5ed11fcd87f883840f6e21b07e93cbf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.14.0/xcsh-darwin-arm64.zip"
      sha256 "9b6418faef30b5e1367f92012e1f1d6b6cea959173729467ff9916d7e3084c40"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.14.0/xcsh-linux-x64.tar.gz"
      sha256 "552bca99a69ff4c30be092de64d427576b69fbaa0172d6c3f4f89316320e4fd7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.14.0/xcsh-linux-arm64.tar.gz"
      sha256 "c9659fcad6c94fd63cc83a39098af6b3b2ba8bef39dcc57c796bcbfd5f77db16"

      def install
        bin.install "xcsh"
      end
    end
  end
end
