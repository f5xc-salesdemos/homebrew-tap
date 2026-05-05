# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.43.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.0/xcsh-darwin-x64.zip"
      sha256 "10ef7352f3e4b6fed2ca866466a4cb16fbdd962c2772fc34db7dadf18b443a93"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.0/xcsh-darwin-arm64.zip"
      sha256 "d0df8ac7319fde0b8336b843d8a7eb93192f2d4237a3f20f42d46356033ca117"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.0/xcsh-linux-x64.tar.gz"
      sha256 "2c075f1ea5c36d84da0d949802f3f4485903216a009a7f3681b49953679555db"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.0/xcsh-linux-arm64.tar.gz"
      sha256 "a73a118c66b15c25eaa7892133fbd4e694e75a041ddcf2cf0caef329d6f82746"

      def install
        bin.install "xcsh"
      end
    end
  end
end
