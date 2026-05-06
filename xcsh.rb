# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.44.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.44.0/xcsh-darwin-x64.zip"
      sha256 "5f8440e4657a0c1633e933c186e1591e48dc00889d1006bc6d619146d6468fe4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.44.0/xcsh-darwin-arm64.zip"
      sha256 "d1a10ed0509ac46ea89d5e7984d9c486c2d7711e73afb83bdf62389d3f548709"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.44.0/xcsh-linux-x64.tar.gz"
      sha256 "3cd4f1c472fd3628a53aabd63c0135438a9b7379f5f6e3eba1ef5fb80501c378"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.44.0/xcsh-linux-arm64.tar.gz"
      sha256 "205983d54133d2caf4651bd1aba9358fd1a1dd755791dfa6cf3ee58bf2b88c45"

      def install
        bin.install "xcsh"
      end
    end
  end
end
