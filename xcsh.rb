# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.24.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.24.0/xcsh-darwin-x64.zip"
      sha256 "2b1ea3def5de17f783d6c59cf43f16642d8383719cd798e18e9a11745bc684fe"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.24.0/xcsh-darwin-arm64.zip"
      sha256 "c396288a42a20c1679b392298e55a8d72a4320e0b10d53db76ca18c977703115"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.24.0/xcsh-linux-x64.tar.gz"
      sha256 "d1c2fd6a478d07bce6e2815af7e65b3ed8e34d5a8690f0c4d19c441d65931d39"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.24.0/xcsh-linux-arm64.tar.gz"
      sha256 "900aed8af7778a68f2b04580901a4a76ff447df59498743e42eab95555c61ae1"

      def install
        bin.install "xcsh"
      end
    end
  end
end
