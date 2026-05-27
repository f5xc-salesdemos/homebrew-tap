# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.83.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.2/xcsh-darwin-x64.zip"
      sha256 "0e194d3dc9dff7c03d35abbb6faa45f26e2b413e6e204dfeca02658a28700e2f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.2/xcsh-darwin-arm64.zip"
      sha256 "e41466a5691113018325379db453a4bdf2a4f2198a87cf929834b27fe7f69e9a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.2/xcsh-linux-x64.tar.gz"
      sha256 "a7cb974adced1937e7daa74a36165621f8a7cb08882a35bb54ebfe2e0099f811"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.83.2/xcsh-linux-arm64.tar.gz"
      sha256 "11089e3fa38a64cb75157a182e86a802463e55464706f76d86926efa173159b4"

      def install
        bin.install "xcsh"
      end
    end
  end
end
