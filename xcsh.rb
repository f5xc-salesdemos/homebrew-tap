# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.65.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.1/xcsh-darwin-x64.zip"
      sha256 "38b322e5fda7e64f99ba6582f864c3c288c99a21a9756ec1f9f7b32f25c872af"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.1/xcsh-darwin-arm64.zip"
      sha256 "33562526d2529e496b72ff80a184d02d3ff13f756737c51b1a221ca852c8af81"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.1/xcsh-linux-x64.tar.gz"
      sha256 "7dc56c7495e8f9f586615bb2c076f47facf6632ecf27660b517ba09cc4b9d108"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.1/xcsh-linux-arm64.tar.gz"
      sha256 "30291531bb1cb93215a39e575784c203a48de76832a9fe296dc5a30ebbcd1a0b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
