# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.12"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.12/xcsh-darwin-x64.zip"
      sha256 "fbbfda8e73c822562bc0a9e757a6929f0416afce550e83e7f586b54d1c0f4f29"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.12/xcsh-darwin-arm64.zip"
      sha256 "ec72d882cb8c74341347be6f1f17fc0c6d739d66de5a93c0f2debd80d98788fd"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.12/xcsh-linux-x64.tar.gz"
      sha256 "af5b46de9a50c5c1140cbd4f31d56ac43fb9d5d350bb78f059321c00eca8dedc"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.12/xcsh-linux-arm64.tar.gz"
      sha256 "f741ee3e72209771ee3b7277379ef8746eebe5371aa76fff99136bc0c860ab42"
      def install
        bin.install "xcsh"
      end
    end
  end
end
