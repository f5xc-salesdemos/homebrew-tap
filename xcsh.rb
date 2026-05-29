# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.87.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.1/xcsh-darwin-x64.zip"
      sha256 "c06cf24a9ac8d06fbbbe223bd75b9cdc710615752e9959386406be2e78d730ca"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.1/xcsh-darwin-arm64.zip"
      sha256 "a7a2ae97c164a57c4d33376b1a317107c33d5b8d3ed14b2d6b8072785b3fbf92"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.1/xcsh-linux-x64.tar.gz"
      sha256 "d20d7f9badcaa5f2d752bc8886372f695a46f382ecbb02c8b3a3a693254f491b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.1/xcsh-linux-arm64.tar.gz"
      sha256 "15ce7957718c478712b02eb2aa22e0b35e84132347bbc13dd5d609fc7b8f4d5b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
