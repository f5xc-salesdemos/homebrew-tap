# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.11.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.1/xcsh-darwin-x64.zip"
      sha256 "a61a3d8d3196e22b627c7e12bbe127765d876bad74389e654ae2e915035c8622"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.1/xcsh-darwin-arm64.zip"
      sha256 "1103686ba2c5dccf1bf0bd43fd7e283deb9c60f96eb4ea1feafba480c3f90f96"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.1/xcsh-linux-x64.tar.gz"
      sha256 "b0e489994e4e4d95153e324c5c904297741479f41b25f5d9b6da54eab07667e3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.11.1/xcsh-linux-arm64.tar.gz"
      sha256 "dab92d8c9c63946a7f4f0e4590adca06bcad4fd311cd926cde9cda778fc69da8"

      def install
        bin.install "xcsh"
      end
    end
  end
end
