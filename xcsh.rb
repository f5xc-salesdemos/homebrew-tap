# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI-powered coding agent CLI and LLM tools"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "2.2.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v2.2.0/xcsh-darwin-x64.tar.gz"
      sha256 "2ee9987387ba4dbbfbcee12dd1f0b0242244cf6bbfc77a698a68e3829425db0c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v2.2.0/xcsh-darwin-arm64.tar.gz"
      sha256 "41de69d4a2ea52b02933c599a193cffb509827b3b390b1e73ad32f9276944fe6"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v2.2.0/xcsh-linux-x64.tar.gz"
      sha256 "f9baf974c494d640c035f731bd1ab8a2620a14b9e29ff161ea0af959034ae9f9"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v2.2.0/xcsh-linux-arm64.tar.gz"
      sha256 "10d8ac0a9cc5729312e436a2f705c6693ee115c20027123e45f6db59ea07126d"
      def install
        bin.install "xcsh"
      end
    end
  end
end
