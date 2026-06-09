# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.20.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.0/xcsh-darwin-x64.zip"
      sha256 "ecf18a1ef4dec2d5d3c34618b20809f13152dc81071ba4fc8715b773056b1812"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.0/xcsh-darwin-arm64.zip"
      sha256 "91bed302252ad3cae9e02a8b2d7c698f3656f07fac7dedda21859029ed0503ee"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.0/xcsh-linux-x64.tar.gz"
      sha256 "cb740608ebd3d234afd9d89d62b4cd9a3e78bfbfbbcbfb931ec3772bc34eaaa1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.0/xcsh-linux-arm64.tar.gz"
      sha256 "7595cb9993eb7f47321dff9d72c883c1bfc527dd2db6c97cd57c79d370df319c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
