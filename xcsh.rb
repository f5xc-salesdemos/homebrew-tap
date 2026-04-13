# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.9.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.2/xcsh-darwin-x64.zip"
      sha256 "b5c6bc0d39bd27a555e457383871cd17f1ead2520de8a113b4b024b6bf45020f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.2/xcsh-darwin-arm64.zip"
      sha256 "3a6823613534c6632cd0524c6dcdc1f85c0217e0f56960986bc6b41caa0366d5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.2/xcsh-linux-x64.tar.gz"
      sha256 "d61cc4ae6bd13f8666239eefa9a45e56d37f2a524777fb4a01fd65d427350933"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.2/xcsh-linux-arm64.tar.gz"
      sha256 "e5db53d09f808951c954e07e6578e5a7d4a99accd90c8583196b10eec01a9c7d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
