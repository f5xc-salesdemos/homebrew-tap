# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.30.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.1/xcsh-darwin-x64.zip"
      sha256 "e54862d5a25a81e27d3dc6158749c8f590a6a1623fa55d07c752b49e90b59d85"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.1/xcsh-darwin-arm64.zip"
      sha256 "76014e20a4a10660d13bb2868ab34c10ef3704be98e09c4b5c2f96a251c07bba"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.1/xcsh-linux-x64.tar.gz"
      sha256 "999bc9bb98145fb9e1356a99a02c853fd25a5299e113505bba9c51790d23f3e3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.1/xcsh-linux-arm64.tar.gz"
      sha256 "24e72b3d9436efc0bcd84ff3c02ebe3f0b5948069c4d051ceb1b618fc2e1993c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
