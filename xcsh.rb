# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.36.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.0/xcsh-darwin-x64.zip"
      sha256 "4d9f680af41e2d81c0f59337560e5778cc975b64cece680493fc710604e06a5e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.0/xcsh-darwin-arm64.zip"
      sha256 "ef5e6209e3c055f5a1be11da44766f62ac705185f8d82860e4924bc7b5cba2cc"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.0/xcsh-linux-x64.tar.gz"
      sha256 "a0224e315f4b88d1bca7904a613b5fce31c484830bcdd23a2eec8dd561cf325d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.0/xcsh-linux-arm64.tar.gz"
      sha256 "bfae7448e9957d131455ff19332abf6a6506fec493cb851fa5acd7452e50799c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
