# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.0/xcsh-darwin-x64.zip"
      sha256 "8bcb381364edefa155952fcfe5e01055ea64d134f8baf7f3e58699807b8babba"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.0/xcsh-darwin-arm64.zip"
      sha256 "bae3a70b81882fa5a2492e4ff06e2bd90b030fd83485a3e87f3f13c506ac0c3b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.0/xcsh-linux-x64.tar.gz"
      sha256 "fdfea7c10d87992c036ff18e7c3cea64c231ac2d643e870fca4ee676bd5bf992"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.0/xcsh-linux-arm64.tar.gz"
      sha256 "301c377dc4a801458dc525e735f2831fa5dcaecfab77a3d4a4b58c52a169595d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
