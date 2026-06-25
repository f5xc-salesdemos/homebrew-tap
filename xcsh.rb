# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.48.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.48.1/xcsh-darwin-x64.zip"
      sha256 "c257273d60aeab01d625f73f0889388d6aa0d899c4078ebff9579f924bb437d2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.48.1/xcsh-darwin-arm64.zip"
      sha256 "4a8889637fcac187a87a3ce8ae4e49b73bafd9f71a2b1fa0b697561dde9733c5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.48.1/xcsh-linux-x64.tar.gz"
      sha256 "983348faa4687306ff7a36bd9db112e7e2eda215268693e793477c4c19fd5b59"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.48.1/xcsh-linux-arm64.tar.gz"
      sha256 "14c159b33d10cc5f03a611e7b2b1c5d0fd5679387e18ea8cf6d6c6bdf12604db"

      def install
        bin.install "xcsh"
      end
    end
  end
end
