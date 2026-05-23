# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.77.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.2/xcsh-darwin-x64.zip"
      sha256 "43c3578c7aafe7ea939674dec779ec658658158c3fa7a40eecabd5fd138150af"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.2/xcsh-darwin-arm64.zip"
      sha256 "6bcf1bf0d8324124cff3088979461ca4a4b74dbc53e5ba8e9262c8bafad17a26"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.2/xcsh-linux-x64.tar.gz"
      sha256 "a329d63cbd21973cb4098044755eb79a287676e464d8532dff09bde3f55c86bc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.2/xcsh-linux-arm64.tar.gz"
      sha256 "a7559f37c24c11cb52fff8f2a54e96d7dabfe545986da99d3eb824e2725f702b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
