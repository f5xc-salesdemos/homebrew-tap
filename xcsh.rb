# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "14.6.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.1/xcsh-darwin-x64.zip"
      sha256 "d4890697c8b4a7114ea17034f650fe7d71ad2652ba2a563d8c992829ff41babb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.1/xcsh-darwin-arm64.zip"
      sha256 "16fec563b447342c70843e5e1219449ac58d34ef31fcb89954297b8f7bf2abc9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.1/xcsh-linux-x64.tar.gz"
      sha256 "14bdec6cf8472eedacafb70daff613efbc78e866a2acf48f284942d4ea4e1ae7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.1/xcsh-linux-arm64.tar.gz"
      sha256 "cbba6d1006525caa8a08f03a9279bcc75c69bed8506c18a319d73c2cca83a4ea"

      def install
        bin.install "xcsh"
      end
    end
  end
end
