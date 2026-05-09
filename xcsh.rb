# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.56.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.56.0/xcsh-darwin-x64.zip"
      sha256 "111c439d74c865a348ed84f386b901103ac55461af1111d01a513910b856b53c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.56.0/xcsh-darwin-arm64.zip"
      sha256 "958b089c992cd7732a2862196362b5955dcc9044bf9dde08bfa88ca6c25dce80"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.56.0/xcsh-linux-x64.tar.gz"
      sha256 "7f737cd4401a4fa512f89a1573ca907ba4522c4e35b11395a787d7fd2b5bd7cd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.56.0/xcsh-linux-arm64.tar.gz"
      sha256 "47cc033f839855f3cae31260510080a93e43ee988d7e4e157f04c2b6d5525f87"

      def install
        bin.install "xcsh"
      end
    end
  end
end
