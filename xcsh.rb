# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.27.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.27.1/xcsh-darwin-x64.zip"
      sha256 "e287a205a7a8fe9a5dc8370e53295d5fdbd15ebe78e0975aae34d88aeaf134d9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.27.1/xcsh-darwin-arm64.zip"
      sha256 "2806950fbcc80872df237841f668df76812b1947dd825f700d2b3261d587580f"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.27.1/xcsh-linux-x64.tar.gz"
      sha256 "b95d47be95a68180de812214ef28aa5966faad34317eaca9d29d92549f8f6467"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.27.1/xcsh-linux-arm64.tar.gz"
      sha256 "dba8434c912b0c3691adb5505e242f95646e4103eaa5415ab8245040d9fc6e10"

      def install
        bin.install "xcsh"
      end
    end
  end
end
