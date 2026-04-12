# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.8.0/xcsh-darwin-x64.zip"
      sha256 "367eaf31878ceca47bc1b3fc3c55c2a7ffea6accd5d1fae03d0611697f33f4a8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.8.0/xcsh-darwin-arm64.zip"
      sha256 "0831a18c867339a3978a4066bfc016c62b05264b4183bd051c3c0853bf453c60"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.8.0/xcsh-linux-x64.tar.gz"
      sha256 "4dbd194f23b6e06d45d98117d5acbb250f41475a3d5f8beb621b19c77ca3ada5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.8.0/xcsh-linux-arm64.tar.gz"
      sha256 "44b7c4106239b1b1d49c70ac97db2787b1538544d2a41d7e835e118ee8680c0e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
