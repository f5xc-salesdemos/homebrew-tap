# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.0/xcsh-darwin-x64.zip"
      sha256 "ec6d77d5908cd9774a0b89b29670b03b0bf68af63160fc75cc9709ab4d974580"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.0/xcsh-darwin-arm64.zip"
      sha256 "3cdc767a4dca6ab591d9490b798333eafcf5263f082614555ca31f5f2e6df25b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.0/xcsh-linux-x64.tar.gz"
      sha256 "ba9970a8a4a830bf3b8e3b7ef2b1ae83ef50a4c999f333d2a0139f1e935d14c5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.2.0/xcsh-linux-arm64.tar.gz"
      sha256 "b1f0be3a3a88c5fea92c4bf119517e9b35708b3affde1b256b4469b81b4914b8"

      def install
        bin.install "xcsh"
      end
    end
  end
end
