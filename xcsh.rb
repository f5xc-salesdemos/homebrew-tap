# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.28.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.0/xcsh-darwin-x64.zip"
      sha256 "c60daea4ff3d1fe81b3fae08e7d5bc2bf87622167450bd3a9ba0304af138a449"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.0/xcsh-darwin-arm64.zip"
      sha256 "c5505f398ffe9bd36495db71d20889d9a825fe2575f0067a99f1a8307d296446"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.0/xcsh-linux-x64.tar.gz"
      sha256 "c5ee2d68a174f9736de29e53dd269e19ba3803d07c52030ae9fddd72bfcf2277"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.28.0/xcsh-linux-arm64.tar.gz"
      sha256 "66cbebc778cd2d9a874423acff28410c5e9fe89158e60e08b3504fd2358f8e31"

      def install
        bin.install "xcsh"
      end
    end
  end
end
