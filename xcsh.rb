# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.30.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.3/xcsh-darwin-x64.zip"
      sha256 "3bf79b1a8e79cf790c8ed762efff4743e1832ed777151a2cf42d947a7f745bbd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.3/xcsh-darwin-arm64.zip"
      sha256 "e3ff29e90ebe65bf7902f375b74a813b9986ebda9906b5f02c8a21606d606a9c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.3/xcsh-linux-x64.tar.gz"
      sha256 "4dac2f900687cd0d0528f9f4e6c1152f0d468f065b338e93633ac1688fede529"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.3/xcsh-linux-arm64.tar.gz"
      sha256 "76464c2dfb5be6a11d6d5c2ef35c8190f307a751c90bf08d801b5f0a35997a33"

      def install
        bin.install "xcsh"
      end
    end
  end
end
