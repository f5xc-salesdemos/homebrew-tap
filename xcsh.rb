# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.25.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.2/xcsh-darwin-x64.zip"
      sha256 "b4e56dce112f0577a239e6ab7823881f7ee18059616488e0208243c156353f9a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.2/xcsh-darwin-arm64.zip"
      sha256 "4d58e5aad6f06f1e0d0c6a2e1291068969c152ad73810711b3792c43799b967a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.2/xcsh-linux-x64.tar.gz"
      sha256 "ec5862380f05b360758f8b84bc89a2e072f08de515edae2005176fe9b3b73b4e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.2/xcsh-linux-arm64.tar.gz"
      sha256 "c758cb0187fe791ae1754baaf10a12d54c7060dccf8db0d0f98688edf752db13"

      def install
        bin.install "xcsh"
      end
    end
  end
end
