# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.85.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.1/xcsh-darwin-x64.zip"
      sha256 "c97a1dca4038f5dfa70b5ebaa2b23b42a961c8149a5109d93a2c0bc46ca3efdf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.1/xcsh-darwin-arm64.zip"
      sha256 "77278c401e8dab0a405a10dee567649d605f8099eea88c3ab6df7aeb763e480d"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.1/xcsh-linux-x64.tar.gz"
      sha256 "aeb8af5ba7c63f8aaff7c6c5b9b382dad96ef083dc6552512763c575c0d6cbc2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.1/xcsh-linux-arm64.tar.gz"
      sha256 "017335b14fbc3a9027d8535f3894fdf97aa5b826b2f3b635e6c3f068ff02cfdb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
