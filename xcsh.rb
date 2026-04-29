# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.26.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.26.0/xcsh-darwin-x64.zip"
      sha256 "ee81ccd749350a4833f03380dd969e190258d180e59044da353645510e1ed332"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.26.0/xcsh-darwin-arm64.zip"
      sha256 "75a7c65773b39568b8c3ae4c86bb4cebe92186bee0259c5416afde1313251612"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.26.0/xcsh-linux-x64.tar.gz"
      sha256 "aae28da913822f810986e41075bee04ad699119d0d386d0ec42c09043a6b8e65"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.26.0/xcsh-linux-arm64.tar.gz"
      sha256 "b6ad93eb81774e933f88bcb54ee41aad3ec764b3a018eadfffec5b0c529240e7"

      def install
        bin.install "xcsh"
      end
    end
  end
end
