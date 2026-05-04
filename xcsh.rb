# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.35.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.2/xcsh-darwin-x64.zip"
      sha256 "efa1c0e707493c4aac928478f6d526d98941bf9179acff766e67b0a84427ffa7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.2/xcsh-darwin-arm64.zip"
      sha256 "11fd8b021bc0d9294666b95179359c7244aa4e3bd00792b64f3e9c5f980b44bb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.2/xcsh-linux-x64.tar.gz"
      sha256 "7fde6837d028633aecae793243f1559f56cda1e167fedf123d3eb4fc039d94d2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.2/xcsh-linux-arm64.tar.gz"
      sha256 "996568740bbe06e1da266c90e667897d3952c650d1d1f55a3bf96d991b0f536c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
