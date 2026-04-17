# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.1.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.4/xcsh-darwin-x64.zip"
      sha256 "5c6a94175c2b4332438dc34b63a33ad8f99c83009265d01f453ce419616d93bc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.4/xcsh-darwin-arm64.zip"
      sha256 "f7e01fadd093ddd0ff16de120beb71b2a24b74043011ef14b1be41e0c260edc5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.4/xcsh-linux-x64.tar.gz"
      sha256 "559353f0c57e100b4bdc1d70dcd321c51d48eb94abd860272511eedd4f4b6fc8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.4/xcsh-linux-arm64.tar.gz"
      sha256 "fade51485c21c81c5b41f6fc248a7989c588e50a657247cb5a93f1e6fbf1893e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
