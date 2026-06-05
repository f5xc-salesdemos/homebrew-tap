# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.10.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.10.0/xcsh-darwin-x64.zip"
      sha256 "dde4950ab71eb93a5b6490845b3ee0693375fe9fd423bb22e3453c2d6d599730"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.10.0/xcsh-darwin-arm64.zip"
      sha256 "a056f10a09e991ea1ecc49acc3b77113a226666d080d403318d3471070e600f9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.10.0/xcsh-linux-x64.tar.gz"
      sha256 "1004c2376b2ad2a500a633095b7be1c26af3b2bf8b9bcd6628579679e4e30c5e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.10.0/xcsh-linux-arm64.tar.gz"
      sha256 "1b94a9822e61e13fd352037ec4ff3c84216f82ddd4dabfa88bbbbf3f5777d221"

      def install
        bin.install "xcsh"
      end
    end
  end
end
