# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.5.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.5/xcsh-darwin-x64.zip"
      sha256 "ef4b05dbe4ebea01bc88740966db94b26bc770d4d57d1a5fea752cbf0abffa6a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.5/xcsh-darwin-arm64.zip"
      sha256 "df53bb8945c5e4bff12884248ca99163548f7efd64999fe21684326b739475aa"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.5/xcsh-linux-x64.tar.gz"
      sha256 "0e853fa3c163d890442d539b44ee7cd1b33a024c6095caf6bdf65bc33848871d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.5/xcsh-linux-arm64.tar.gz"
      sha256 "10c83e5cb834c6696368fb6eda359f1cfd3baf97b3e87aabd20b2014d5ee9f4b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
