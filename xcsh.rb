# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.18.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.3/xcsh-darwin-x64.zip"
      sha256 "b17a9337826cadcf52a15cd72563da3fab65b2c9fe3c9453744162c4e3260281"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.3/xcsh-darwin-arm64.zip"
      sha256 "dcac416a0fd96fd54aa0de9580a34aa269398d0f1ca12e89222bd8ee7b2f31a3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.3/xcsh-linux-x64.tar.gz"
      sha256 "cb259c3c090db9c7e4347521e556fcfe00196addc4cfd505a451c7b813c09a79"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.3/xcsh-linux-arm64.tar.gz"
      sha256 "ae0b403ac06ec7b354d7d711a2937fe3a8e45c3f5aef81e71bed2202ae34f855"

      def install
        bin.install "xcsh"
      end
    end
  end
end
