# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.63.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.0/xcsh-darwin-x64.zip"
      sha256 "3da86b81590ead963d97723d1de34dc47b66a67dee7614b92d32a8f6f5cba9f0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.0/xcsh-darwin-arm64.zip"
      sha256 "1ed1640317764fcb68191a2dd8afd6aced9590fc82a166a52e169bf89aa44b52"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.0/xcsh-linux-x64.tar.gz"
      sha256 "695a6f565ee734865ad1d9d711293efb822796374168563c894dcdef8a304122"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.63.0/xcsh-linux-arm64.tar.gz"
      sha256 "6070eea99cf27534ea9b0930dce128bd99af4a844eb43ed6827bcda91da26148"

      def install
        bin.install "xcsh"
      end
    end
  end
end
