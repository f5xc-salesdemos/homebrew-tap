# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.5.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.3/xcsh-darwin-x64.zip"
      sha256 "6d9a7a8751a734cbe9c34cf009de579705ee5ec6e089193c4f50748936ca18ae"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.3/xcsh-darwin-arm64.zip"
      sha256 "0d82c2ec0fd971776765dd9a1a1315bd13a4c21cfcd894368b2ca9bfb118b85c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.3/xcsh-linux-x64.tar.gz"
      sha256 "5bebf7807487a0c291561ac8b109cca2f6ca79ee3807aa76877fdacc5c963681"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.3/xcsh-linux-arm64.tar.gz"
      sha256 "47f4b3f18cba1da41f1a0a77f8214e7c239a9e25c10209ec0a3c0f0e42a22682"

      def install
        bin.install "xcsh"
      end
    end
  end
end
