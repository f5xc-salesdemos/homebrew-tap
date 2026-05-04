# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.36.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.2/xcsh-darwin-x64.zip"
      sha256 "293cb6845859d8b3ad34b19c358196ad16cbffcbc69e163c1b2c56c424596d63"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.2/xcsh-darwin-arm64.zip"
      sha256 "0e9e4ac9a907fbe4545004995167ce8e5cbc384bb8e129a7a9c07903b1808d5f"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.2/xcsh-linux-x64.tar.gz"
      sha256 "de15eadba1a7896a712c757abd7d776b86fa765596270471b6542c3c358b5b4a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.36.2/xcsh-linux-arm64.tar.gz"
      sha256 "7c4a93bac5f7ea41d917b3da0cffb79f211e01e7632199a8ec7d2474312e58fb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
