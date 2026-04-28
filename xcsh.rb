# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.21.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.0/xcsh-darwin-x64.zip"
      sha256 "0fd490364823ecaefcae9a0cf7f2f5385ab35178ef87f2e13a2bd7cf47629006"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.0/xcsh-darwin-arm64.zip"
      sha256 "4e053f73a0af721ba801c20fa4d02e52074783a11692a2f213c8a6a75fded02d"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.0/xcsh-linux-x64.tar.gz"
      sha256 "17260932cdb8d530d1a39bee109424537e68278cd87562c46eb9519b217b0598"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.0/xcsh-linux-arm64.tar.gz"
      sha256 "c4efaec603544f876d6d5bc4a00cc16d9d516b4670e6e73418801bc420b1cfb4"

      def install
        bin.install "xcsh"
      end
    end
  end
end
