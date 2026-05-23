# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.75.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.3/xcsh-darwin-x64.zip"
      sha256 "1bfc89522fae7a1aafb19cdaa103718043c330a385c796d6cfb36fa2735f6509"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.3/xcsh-darwin-arm64.zip"
      sha256 "995e63b5424635a8ce942afd9bcae2437a90130e2500e6a57794e38d1ea0fcc0"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.3/xcsh-linux-x64.tar.gz"
      sha256 "6bf79db71504ff63780b98252226615f0f6a065e4966f8ceb6c1f8d2200349c3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.3/xcsh-linux-arm64.tar.gz"
      sha256 "8967da294e8b6809ad0d8e1d42dd2317e2c2e7e17c0336f2b7d43d7c07e8f11f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
