# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.18.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.2/xcsh-darwin-x64.zip"
      sha256 "c587979d44acd01e88cdc7700af2e1953b082e7d2bd8481e672eb6243e8e3a9c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.2/xcsh-darwin-arm64.zip"
      sha256 "8902db5a93788c82f5f6769d6f3945daef5ba8cf8edaff4d86c1ec9f4dcb8fe3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.2/xcsh-linux-x64.tar.gz"
      sha256 "9d7eee54307f4c96ac101001e3864dfe5a9f7214439b14ee69a1c497ed6554bd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.2/xcsh-linux-arm64.tar.gz"
      sha256 "bca4d960c1ac9e1ed88841f1476a2353e7753521aa5e1853ae2f235834ba68b0"

      def install
        bin.install "xcsh"
      end
    end
  end
end
