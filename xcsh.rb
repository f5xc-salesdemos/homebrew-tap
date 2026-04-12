# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.6.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.2/xcsh-darwin-x64.zip"
      sha256 "e03905a6a3ec1e87cc9e190551d5ee0f95bfd1afdd05356ad72fb97c18a29d79"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.2/xcsh-darwin-arm64.zip"
      sha256 "bab1c695a605b33e04459742505f6e55d3139404dfe8293b62cc9acd025d47b7"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.2/xcsh-linux-x64.tar.gz"
      sha256 "895b1e7dac1e141fcd32fe1c2bf367ca69f89d6c6fbd6280a8d69ae855d76ba4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.2/xcsh-linux-arm64.tar.gz"
      sha256 "5d1a25960c5dafa7161fb745ac9eaf51d4b5f75a5a826859a75cfdda5e06c1ac"

      def install
        bin.install "xcsh"
      end
    end
  end
end
