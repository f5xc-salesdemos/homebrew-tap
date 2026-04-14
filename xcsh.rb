# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.12.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.0/xcsh-darwin-x64.zip"
      sha256 "dd14b4fb606eace20fc5a5a71ef72be49c69bf932643e9b2d6e9a86e9c2e3786"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.0/xcsh-darwin-arm64.zip"
      sha256 "d46297b8bbab8e21da6d4d9b57c32934bb38fa290cea30ec81a23a845d60bbcb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.0/xcsh-linux-x64.tar.gz"
      sha256 "f8b98dbe333dad0c28fe28f05f68098b6117141329c3ecc08e9a8ef64d96813f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.12.0/xcsh-linux-arm64.tar.gz"
      sha256 "ce90b98d276e06fb4a912d1ede89a10b04cae02600f72aa534523612a3c64a69"

      def install
        bin.install "xcsh"
      end
    end
  end
end
