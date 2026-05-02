# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.32.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.1/xcsh-darwin-x64.zip"
      sha256 "09512b67ae20931a23f564a899757ed6dfdfc500702110ac56038b618a9c20c5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.1/xcsh-darwin-arm64.zip"
      sha256 "5512ef4cf40a77929dda7d3a712dedb71d4ec77da01a12eff187eb2286e2d7a2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.1/xcsh-linux-x64.tar.gz"
      sha256 "576caf50e46252434e371cb812937003b526d1e364ef0a6f56b5072a939de5b8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.1/xcsh-linux-arm64.tar.gz"
      sha256 "36e39424210953237892bcd49dfa6268f3ff5541d8476cd6ad8570fa43227319"

      def install
        bin.install "xcsh"
      end
    end
  end
end
