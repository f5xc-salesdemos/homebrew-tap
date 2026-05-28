# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.85.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.2/xcsh-darwin-x64.zip"
      sha256 "d50e97f3fcb6a03106145406601395ab56542d206c206b58327f8daaafed17d3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.2/xcsh-darwin-arm64.zip"
      sha256 "2e025c5229e1bd24da86176492293c59c3912ff53672994978f43ba656ecec26"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.2/xcsh-linux-x64.tar.gz"
      sha256 "2d2ad47f8c42f46cc99c0b01edfe5b4fa94258afe7a0ed9b1d243b13ffba1b29"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.2/xcsh-linux-arm64.tar.gz"
      sha256 "9ce880f0c2c014a00928020c8ce23e8f4d85e8942f892fab411074143d1956b6"

      def install
        bin.install "xcsh"
      end
    end
  end
end
