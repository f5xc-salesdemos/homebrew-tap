# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.2.0/xcsh-darwin-x64.zip"
      sha256 "4fde47c7dd27645b5296f79f813398949e64e579f86f536f26428a01e94e6916"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.2.0/xcsh-darwin-arm64.zip"
      sha256 "5886e17988de19bdb29c6901035a60f9ace62a6733dd5f52e2d8ffc3dda529f5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.2.0/xcsh-linux-x64.tar.gz"
      sha256 "9fb71275c938587b04ea56370aace1dde3e012a283362a6918d0d4de1c9e8745"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.2.0/xcsh-linux-arm64.tar.gz"
      sha256 "88d6d8ef623f9447d93592c5a63cc255154844bf732aa25f071a48108ae70296"

      def install
        bin.install "xcsh"
      end
    end
  end
end
