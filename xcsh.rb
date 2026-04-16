# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.1.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.2/xcsh-darwin-x64.zip"
      sha256 "0e774db074fe8a5ae24b63d27366266cfe9492760201f86ebf9418837b3d9788"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.2/xcsh-darwin-arm64.zip"
      sha256 "52ed02167e452e35b8f8fda9a8f35dd2e7492907bb0060b9f7d265babfba1a82"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.2/xcsh-linux-x64.tar.gz"
      sha256 "c22fc32ec85065094476bfc5effb5c01d5d13d980d6efe69776cd2ef2ad9a5d4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.2/xcsh-linux-arm64.tar.gz"
      sha256 "f8a62526ef5c5c6328c5d20af7e5dfc83201995bbeeb536cafa6708fb09f0fb4"

      def install
        bin.install "xcsh"
      end
    end
  end
end
