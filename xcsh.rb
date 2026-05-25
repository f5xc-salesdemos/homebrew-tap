# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.80.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.80.0/xcsh-darwin-x64.zip"
      sha256 "fdf1c3dfe00b160cc2d43b49c2701ee7ecad2254a085750e38d57e792913cc4b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.80.0/xcsh-darwin-arm64.zip"
      sha256 "6b4a5543c08868a6e31732ef1586849ef8ee253beb2ce60c5eb0c14dada9f7fa"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.80.0/xcsh-linux-x64.tar.gz"
      sha256 "707472169527b94697c29c75e670a9b170fdc0546bd5add490ba5abc187a8534"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.80.0/xcsh-linux-arm64.tar.gz"
      sha256 "a3114c8ebde268a93a2ebe9e8e3b5286666ea1356f405b4ebb7a0ae392e56b8a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
