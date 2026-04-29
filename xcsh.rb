# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.25.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.1/xcsh-darwin-x64.zip"
      sha256 "fb7ee95bb7571c4729440fef9d543bc24c4b2029637b312159d8ec9118eb548d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.1/xcsh-darwin-arm64.zip"
      sha256 "e28e620f8a1ca1093490a49b65afa5079f9270f26d2f4fe7ba2c1ab9bce168ea"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.1/xcsh-linux-x64.tar.gz"
      sha256 "8ac425bd3b70800b7ca3c9eaf003c1bc6f662d55396ace1ccc2ca9b0beb9dce8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.25.1/xcsh-linux-arm64.tar.gz"
      sha256 "173e82ce40670cce945bd0e4dbc7e0e23ffc626fdda3ac7053783f5882a94bbc"

      def install
        bin.install "xcsh"
      end
    end
  end
end
