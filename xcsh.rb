# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.91.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.1/xcsh-darwin-x64.zip"
      sha256 "07f913859b83c36b5fcebeffcae1433cdc33dfc70bfb16c7e3c13d4d9f4b65dd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.1/xcsh-darwin-arm64.zip"
      sha256 "c0e5a5d9b978a3f0e6942eb6bc9765eafcc42fac66d5d6c9246c05d5e14fad60"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.1/xcsh-linux-x64.tar.gz"
      sha256 "09bd04ed3a7b695f023b029a7948f1f61046bee08929c7e433ae480a831f0f5d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.1/xcsh-linux-arm64.tar.gz"
      sha256 "988c0b81c871e1dcfc6bf8d576dfa78ad7109b5b43a21d0c7d728c9835480cdb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
