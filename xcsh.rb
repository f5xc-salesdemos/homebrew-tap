# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.2.0/xcsh-darwin-x64.zip"
      sha256 "e4de0d29695d019dd4a7ab7d9af8db7ca989876726e3a0345636a323bfe36fd1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.2.0/xcsh-darwin-arm64.zip"
      sha256 "1008007182bb7914cdefc29647359470e77c10bda6ca802433690c727e3b2184"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.2.0/xcsh-linux-x64.tar.gz"
      sha256 "16195e9c32f22d5f88aae338db6127ef56d8a587e88b32d57f726dd4bca2ac2c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.2.0/xcsh-linux-arm64.tar.gz"
      sha256 "9dd811d6df3a695072d7ef4eea3b0b2bf1d0de9c4bfea72181df705c936509a8"

      def install
        bin.install "xcsh"
      end
    end
  end
end
