# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.59.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.1/xcsh-darwin-x64.zip"
      sha256 "25f613dbaa9d3d5212ea8cad270450934d41c915547179730d5885651f09434f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.1/xcsh-darwin-arm64.zip"
      sha256 "d085bfcb985f787d5fecec2ed7a5e874d2cd1d6474d798422fe039293b62d13b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.1/xcsh-linux-x64.tar.gz"
      sha256 "ce12756f82618970880921f168597d886ae7acc254613940b0d8968d6657a233"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.1/xcsh-linux-arm64.tar.gz"
      sha256 "3c2b43c6b6135f88bfba7e8ae933613ce8fe8c6bd375d24797bd45212c033a54"

      def install
        bin.install "xcsh"
      end
    end
  end
end
