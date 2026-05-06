# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.48.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.1/xcsh-darwin-x64.zip"
      sha256 "d2ad65ba6d58de241aab2c2795af8bc5befbc94c831dcc48821a70e59ffc3ac3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.1/xcsh-darwin-arm64.zip"
      sha256 "873658dc6c3ecbcb257ff5548d4b77b7c700fa911a9eeae014a83f3bb65e10d3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.1/xcsh-linux-x64.tar.gz"
      sha256 "cd6b5575ad80a24da25c4a55bc0634cd629f2963febefe89f2d01dac50f17377"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.1/xcsh-linux-arm64.tar.gz"
      sha256 "4dcc1eded1565928c611e15d2c7a7b0401d96b27051384f65e9c3f9fdfd7ec9e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
