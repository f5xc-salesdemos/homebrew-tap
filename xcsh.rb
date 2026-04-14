# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.12.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.1/xcsh-darwin-x64.zip"
      sha256 "261ef53da4c7ff0de974c3222e2d7c83eb4b5c42e66b65565a8210f33ddcd8cf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.1/xcsh-darwin-arm64.zip"
      sha256 "9025d8aba526361e69dd21f2c029b284ea63543fb3453aaf3ce8f4152cd0b6a2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.1/xcsh-linux-x64.tar.gz"
      sha256 "268c93033d5e2cdaf7c137e93682e1a064946e9c125452345ff0780da4186774"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.1/xcsh-linux-arm64.tar.gz"
      sha256 "482c625c7108736e94de3a1e8bdb47c3ed391a6f52ffe3d1e35040e057225f29"

      def install
        bin.install "xcsh"
      end
    end
  end
end
