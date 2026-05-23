# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.74.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.74.3/xcsh-darwin-x64.zip"
      sha256 "cfe3f41241ee5930d2184079901092434ae6180d1201c0e6d5efd4104453ee11"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.74.3/xcsh-darwin-arm64.zip"
      sha256 "e093986491bae0df50adb08a909636925a87dd2bfdf03587a09de0cd359309eb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.74.3/xcsh-linux-x64.tar.gz"
      sha256 "b59ae94b2a47100877f89802742f3abd7aee304fe321cc62c5a7006ffddaef67"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.74.3/xcsh-linux-arm64.tar.gz"
      sha256 "bdd326bc327c5e8a7f4877789b15a193b0c82df65f32756ff1d530f4b0f588e2"

      def install
        bin.install "xcsh"
      end
    end
  end
end
