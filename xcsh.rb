# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.58.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.1/xcsh-darwin-x64.zip"
      sha256 "4af47cf946ea7bfa8d87135e86a32b1b2bca937ee2f271d4bb7732f5f4af9e9a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.1/xcsh-darwin-arm64.zip"
      sha256 "87849d00d257f362e37d3cac6f6e3177e028a015bec6399aafed4f15e538a8c3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.1/xcsh-linux-x64.tar.gz"
      sha256 "cb8359478b31bcda2878852d86afacc7138284df8f567a3d7603b802058d3d15"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.1/xcsh-linux-arm64.tar.gz"
      sha256 "7c00c1230d42257fc65d7b7e55d1aac7227166a14c09f87344c7a8e012785bf5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
