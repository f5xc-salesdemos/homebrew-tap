# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.1.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.1/xcsh-darwin-x64.zip"
      sha256 "d16a40a44850ae8f899871b365a0b1a9ec2bee7f94cf2c7c3490c54ce1978673"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.1/xcsh-darwin-arm64.zip"
      sha256 "ff71d154f79af6b8e8816bb20e1bd83f04b9f392f4b4e4e4ee9a0391a08bc35f"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.1/xcsh-linux-x64.tar.gz"
      sha256 "fc1ccbc20c076895335e9cc00abd1e4bb18bc779238cc6a5f63db3730e535f77"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.1/xcsh-linux-arm64.tar.gz"
      sha256 "f064565bb433c3d91cafb13d1ba5d264566c57f756f9e2fb70df59be0ba8bd0b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
