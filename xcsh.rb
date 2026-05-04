# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.38.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.2/xcsh-darwin-x64.zip"
      sha256 "c5a59358f82f2cf7bc54a3bfd5a5d6644d1ea81d8eec0690b8d5102833730280"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.2/xcsh-darwin-arm64.zip"
      sha256 "065d76ac8b42599ca10f5980dfc4639995cc717c6c7559405cbceccfb75ce75b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.2/xcsh-linux-x64.tar.gz"
      sha256 "843aa812e36fb6293c8fa6d306c22d849910e5d1c9a59e4d7922a56273d6872c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.38.2/xcsh-linux-arm64.tar.gz"
      sha256 "fbc18942326e71b4e1393f21cd7d50e99c4c24558bddbed6f3c972da5cc2a85f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
