# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.4.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.4.0/xcsh-darwin-x64.zip"
      sha256 "ba7f826211052f3e230edb0be1da62b2bfd4074eb63e662e1e0c6c2d6e1a39a0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.4.0/xcsh-darwin-arm64.zip"
      sha256 "b2e83a4a80fdacce3c96454b53635ec2fac835b5dccb994a1ed7395d11fc978d"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.4.0/xcsh-linux-x64.tar.gz"
      sha256 "fc10ecca32996042a63f26a81a8746f4d8c78336da5a3263e022ad564860c07c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.4.0/xcsh-linux-arm64.tar.gz"
      sha256 "d6122ca3118acb571268cb9cd2ded37997f33f53c846a2402b6d9d2f728de7f6"

      def install
        bin.install "xcsh"
      end
    end
  end
end
