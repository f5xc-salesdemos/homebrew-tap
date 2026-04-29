# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.23.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.23.0/xcsh-darwin-x64.zip"
      sha256 "84c75505d69ce14fc7f379e1af18ef5ce4850f7a0026375ac617a45c8060138f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.23.0/xcsh-darwin-arm64.zip"
      sha256 "b27d21af268db565152a43272e2cfb33690b9d566300e9ba4a2e8cc1fb701fa5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.23.0/xcsh-linux-x64.tar.gz"
      sha256 "9a7c4f2e9e4f7ebb71f7b7b014c99c3eab92de94aa582770c72b99208c0deba9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.23.0/xcsh-linux-arm64.tar.gz"
      sha256 "6c445ee8e67c6147a8c7298c97fd487c5cc91b29ad0d99b40320a1ffb068981a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
