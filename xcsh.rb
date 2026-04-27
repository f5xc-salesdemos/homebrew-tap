# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.19.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.0/xcsh-darwin-x64.zip"
      sha256 "6e47c25ddd2270328c9a0a483e255d9afcbaebd8b25b438119a570c9cc33f3cc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.0/xcsh-darwin-arm64.zip"
      sha256 "160191dc1937d46c0af56ebd16bdce571343354957aa7304f33891bc4249383b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.0/xcsh-linux-x64.tar.gz"
      sha256 "37aef4f0c89fa2d401ae5c439903d9f884ef4e977fdc2c529fc23a8f1285b6aa"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.0/xcsh-linux-arm64.tar.gz"
      sha256 "6ebf449ec0c8a73e2906609ede5fa72dce12d60dbb06e07bc17a1886948c1b25"

      def install
        bin.install "xcsh"
      end
    end
  end
end
