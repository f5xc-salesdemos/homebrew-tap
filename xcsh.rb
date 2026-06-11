# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.26.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.26.0/xcsh-darwin-x64.zip"
      sha256 "513ca583a206fc18fd02cd9eb36fe8fed8e92cc6f245aa0e288d3a92f7347d5b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.26.0/xcsh-darwin-arm64.zip"
      sha256 "2611c33e5b94aae889bbd29e919cfff492e77caf957c23562a1f0c05a419aae6"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.26.0/xcsh-linux-x64.tar.gz"
      sha256 "2fb252c288c0bc2420080490c2801b2f90177142547c4ead1ef70fe7166b446d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.26.0/xcsh-linux-arm64.tar.gz"
      sha256 "4dac00fbede8c35cb6d47ac1f45abbada186b6129bceba277311ebafa2437d6e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
