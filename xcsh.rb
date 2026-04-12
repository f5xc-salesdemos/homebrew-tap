# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.6.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.1/xcsh-darwin-x64.zip"
      sha256 "ed536c9459e34c80f246754593e72e42a34e65679007dfafb83726b2b1befa83"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.1/xcsh-darwin-arm64.zip"
      sha256 "76ed8f40e1a850be8ae4e3d90ac87c223e9f363c7cb54cea0c0555f3fe4885a7"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.1/xcsh-linux-x64.tar.gz"
      sha256 "bada1b6a2937ee90f39d8b410260ce8fe61d8f8fddc7abd1e1b4b2166ef03436"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.6.1/xcsh-linux-arm64.tar.gz"
      sha256 "49e677b18e63c7f0a07284259ebead1e91f755dbbb82ff25acc4aab86fe662fd"

      def install
        bin.install "xcsh"
      end
    end
  end
end
