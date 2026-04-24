# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.15.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.1/xcsh-darwin-x64.zip"
      sha256 "dd82de922e1e6a3cab140ab8485f60e33ad0296e20dbc4feb7039e549b90ae76"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.1/xcsh-darwin-arm64.zip"
      sha256 "0a1acce472185cd7c5bd7d3e66579b02a4213816f0ad054c2b06b9f975db3502"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.1/xcsh-linux-x64.tar.gz"
      sha256 "4dbc892a382b6810cdc1ef13cbef18ff4d1b3e55c7eea506a5913ab032d4e706"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.15.1/xcsh-linux-arm64.tar.gz"
      sha256 "9974dabe4a907ad25f965a22e677ff451bb83551223a46a5891e658ebb190af9"

      def install
        bin.install "xcsh"
      end
    end
  end
end
