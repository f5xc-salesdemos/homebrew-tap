# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.55.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.55.0/xcsh-darwin-x64.zip"
      sha256 "646306579a3a4904731c2a0dafc7eaf0575479d21f05adcf14ac2a24d2b500d4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.55.0/xcsh-darwin-arm64.zip"
      sha256 "a3b53392a9d1586144ea9dd17e1b9e2ac09f4983be5bcfdc88fcd21a2ba1888c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.55.0/xcsh-linux-x64.tar.gz"
      sha256 "13c82893955de8ce3d2eb98f1049531db380629fb36da8c7fe46c472fdcfb63f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.55.0/xcsh-linux-arm64.tar.gz"
      sha256 "abaacb07bcd2ff54bb032701f6e4631f9933ce6c3da32a693f6122cf2db8d95f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
