# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.27.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.0/xcsh-darwin-x64.zip"
      sha256 "f02736ec2a12d1ff659f59b16888769e19da76ff4e4e4f6d629ed6a6fdb02c8b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.0/xcsh-darwin-arm64.zip"
      sha256 "d44e3a790f49c4b12c053268b7d530dd4d9640f4737c6b7f7cf44c62d6b9e237"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.0/xcsh-linux-x64.tar.gz"
      sha256 "9ac575258c7b447a5059d669471e54e32d037063685d7a3cb886f3d67f7f9e25"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.27.0/xcsh-linux-arm64.tar.gz"
      sha256 "4b138619689a1d3774c8869d583389e53b15a1ec499af067e37fda37ec6da2e4"

      def install
        bin.install "xcsh"
      end
    end
  end
end
