# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.7/opencode-darwin-x64.zip"
      sha256 "56c770390b22f855ae50f2d53fed3890b769c81a6024803e2c6b71f8fcc25f25"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.7/opencode-darwin-arm64.zip"
      sha256 "f52973910cb949d380dfbbafdda870d1ae431983ee1870cb092b9fbfd7a43f3b"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.7/opencode-linux-x64.tar.gz"
      sha256 "02502c99c414f5b60718397e908239cb60cb9690498569fcb69d4f573d9278df"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.7/opencode-linux-arm64.tar.gz"
      sha256 "959705c1bc502391c5b398524fac54933db9b145f14d1526d47e431a08b8e892"
      def install
        bin.install "opencode"
      end
    end
  end
end
