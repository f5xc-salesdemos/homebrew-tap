# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.5.0/xcsh-darwin-x64.zip"
      sha256 "3ed423938498cf502828200bc059bea23adadd49358e389ac17dab1c415fa696"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.5.0/xcsh-darwin-arm64.zip"
      sha256 "81bd4ce7507c0f49829de23e14679b6a25d2cd08e5e026eca7da5914a7bd35a1"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.5.0/xcsh-linux-x64.tar.gz"
      sha256 "66e8e74b2b150489a05877adc518f407d2bd0a17e9518ecb9bf457f4aa4cddb1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.5.0/xcsh-linux-arm64.tar.gz"
      sha256 "c70a702749cf9d1b917a23c2464394fdb55bc073b7ffec3733f586365fadc3f0"

      def install
        bin.install "xcsh"
      end
    end
  end
end
