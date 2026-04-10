# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "14.6.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.0/xcsh-darwin-x64.zip"
      sha256 "215621592127b9141ea6679427863a2334e6ad0a7bcb7fbf87b5d600956e3dac"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.0/xcsh-darwin-arm64.zip"
      sha256 "6ddb004d4dc653c469934f24cc80fb1d98ea7d78414bc2485f2fe107a25e4c85"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.0/xcsh-linux-x64.tar.gz"
      sha256 "1e6c4460f16dc07de29377a6fc2ee2f288a6ee1268ccc667980ec8eba02e6155"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.0/xcsh-linux-arm64.tar.gz"
      sha256 "852b74421ed77767623ce8bf8cdbdba21339aa639c421e8e36d87ac35e6f792b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
