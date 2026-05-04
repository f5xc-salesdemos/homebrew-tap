# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.38.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.0/xcsh-darwin-x64.zip"
      sha256 "dcfe3b75fb7cc796ba3483a0642cab2a83c2d0730050bfc32f22ed5fee35f96a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.0/xcsh-darwin-arm64.zip"
      sha256 "4ae548acbf64d7b568129d8bc4cf969418edf8fd82376965bd8e2d611a97acb9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.0/xcsh-linux-x64.tar.gz"
      sha256 "0657c1e26e58f790397ddd85a952a479865bf58b7d46376791a09e94055e554a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.0/xcsh-linux-arm64.tar.gz"
      sha256 "2293084f83c0ad9cdd07340a832eafdfe98cbecfda9de6852276b662b86d9314"

      def install
        bin.install "xcsh"
      end
    end
  end
end
