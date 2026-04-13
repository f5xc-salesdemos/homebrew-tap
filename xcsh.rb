# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-darwin-x64.zip"
      sha256 "0f1d807b1e14e804a743a86e468d77b9ae9abd504bf13756a3dfaa39aa4c11bf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-darwin-arm64.zip"
      sha256 "eee75197edc77d7c2daa501ad8d62fc321032580484b0312ddb93adeaa252523"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-linux-x64.tar.gz"
      sha256 "019dd6e4f8a13f07a9d4ea9fc637e20e1cd4794c37e784e15c340e49eac630e4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-linux-arm64.tar.gz"
      sha256 "b82da759661ea58bee995086e30d20c060af2e989ee4b86ec2e2c23d62474a25"

      def install
        bin.install "xcsh"
      end
    end
  end
end
