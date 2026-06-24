# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.43.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.43.0/xcsh-darwin-x64.zip"
      sha256 "f9546d837ba20ba3458c2a084762e1c13d268b2d57d68b1056d8c3f20751cf48"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.43.0/xcsh-darwin-arm64.zip"
      sha256 "b8fe7e0bbbcd55dbf00e81b385afa7c86c768b3f00bb718cb4b40db8d3fae812"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.43.0/xcsh-linux-x64.tar.gz"
      sha256 "b7801cdab758a1c06873d209995d40e06c3f104874d44db0d3c8ed64a8a4aad8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.43.0/xcsh-linux-arm64.tar.gz"
      sha256 "59db1a80a3e24e8086a3ee60ad71c92bcd1820bd7a28797c6a1de95c9a8afc19"

      def install
        bin.install "xcsh"
      end
    end
  end
end
