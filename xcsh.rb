# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.17-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.17-f5xc.1/xcsh-darwin-x64.zip"
      sha256 "3b86f05f42287b9c00cab235c1be4a08750f54ef1d69e6befac7d4ea46593166"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.17-f5xc.1/xcsh-darwin-arm64.zip"
      sha256 "99ea405c8a58c9aebfb8b9d09e8940640b65b3e9f8ded4d638f8fd995c07fac3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.17-f5xc.1/xcsh-linux-x64.tar.gz"
      sha256 "d01e4fc97b95537e729c726ba3b533ab1e715cab144d95fb25ca77bd38dc61e6"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.17-f5xc.1/xcsh-linux-arm64.tar.gz"
      sha256 "a7da04086c64333913390236a517e848d1a96561a9eebd8824cf721f28520b8b"
      def install
        bin.install "xcsh"
      end
    end
  end
end
