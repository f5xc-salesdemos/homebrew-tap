# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.18.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.5/xcsh-darwin-x64.zip"
      sha256 "49c39122b22c766a7d79f534d0f2a784cda4db4144e951410f47a3b85a333375"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.5/xcsh-darwin-arm64.zip"
      sha256 "c0b057ef575b009da46b54e5d75bc573443b3e61175e6a50198b7de7f1b0fe76"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.5/xcsh-linux-x64.tar.gz"
      sha256 "91168fb651bc0fcc1d7dd7210cb9d691c392eadd3ea515cdff531398ab5a09e3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.5/xcsh-linux-arm64.tar.gz"
      sha256 "7a22f2efcc22d94c295d552afecf022364381c5d79177579ad6f0ae5a13805a3"

      def install
        bin.install "xcsh"
      end
    end
  end
end
