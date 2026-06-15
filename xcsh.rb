# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.31.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.31.0/xcsh-darwin-x64.zip"
      sha256 "d1d1cf1e95a04d8358adc5da2aa72ebbd7038680031051de3fdcce8009bc373f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.31.0/xcsh-darwin-arm64.zip"
      sha256 "e8970003cbe908f3dc53a9774f6b9ba6630303e5a3af9a16d9c5cd90d3316dcb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.31.0/xcsh-linux-x64.tar.gz"
      sha256 "ba5634cac18ab2330398805c3f18799f68b657816af0f565685dba12bfb5f421"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.31.0/xcsh-linux-arm64.tar.gz"
      sha256 "a7e5ab94e457dcf9390550f42e8ac3dbf93e2e9ff8208e4add9c89f880aa13bd"

      def install
        bin.install "xcsh"
      end
    end
  end
end
