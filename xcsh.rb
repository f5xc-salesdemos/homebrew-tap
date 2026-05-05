# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.42.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.42.0/xcsh-darwin-x64.zip"
      sha256 "8aca39be9c9a13fc7ca2f71e04de5671dd2a63b28714856f14c245ff5f6f1687"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.42.0/xcsh-darwin-arm64.zip"
      sha256 "a491f6d2896b31524258ef0288fa2a3e312661131366f3c96aaa0aa1f2e3442e"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.42.0/xcsh-linux-x64.tar.gz"
      sha256 "d2dc2eec1382b08f568252ff8101fc722664845d094b74fd01c18b89cb5e9501"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.42.0/xcsh-linux-arm64.tar.gz"
      sha256 "0b8508704147ade9aed23ba7cc1613f17cf6300b4227dbae60598190ba9a1847"

      def install
        bin.install "xcsh"
      end
    end
  end
end
