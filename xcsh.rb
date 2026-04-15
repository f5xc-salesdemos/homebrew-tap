# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.16.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.1/xcsh-darwin-x64.zip"
      sha256 "cacf8b1fd2160306feb8500e57f4983921e98bcc302ce2d23f55612725c5d24d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.1/xcsh-darwin-arm64.zip"
      sha256 "ce6442b8fcd2ea8367fd97367ebb30636d8cbf9f58589273d5aea924a03cfffc"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.1/xcsh-linux-x64.tar.gz"
      sha256 "2cc5eb88be8fa39b969aa27c569ca66c52483ff0b96621770ef106a9e30d479c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.1/xcsh-linux-arm64.tar.gz"
      sha256 "31bc2f97565e10401cc8f90f4a13e4c6b5e5ee22a6873b1086101663b457f40b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
