# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "14.6.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.3/xcsh-darwin-x64.zip"
      sha256 "78a7f703f3ed0c473fe266fe099c1e848570cc9a6d633d4b1ef4321bc96a2bb4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.3/xcsh-darwin-arm64.zip"
      sha256 "812793b25ef89fb51a6d289f0685ea57eae609b248e052a5dcca2dff6f12fe30"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.3/xcsh-linux-x64.tar.gz"
      sha256 "6ec7283cd9ca4f71d9de9ab28ac8eb27f60e0cb5099855ecef896873ab0518eb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v14.6.3/xcsh-linux-arm64.tar.gz"
      sha256 "ae3329af75e859e93898262f2195bc94e6c31abce5cf20d6b120f338dcaeae4e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
