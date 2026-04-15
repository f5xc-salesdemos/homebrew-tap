# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "16.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v16.0.0/xcsh-darwin-x64.zip"
      sha256 "78573a94060b2c81325ee7895a5fe322bcba70ed2a2e9ac02c31f13f84c41807"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v16.0.0/xcsh-darwin-arm64.zip"
      sha256 "0d26b25aa9482d4794a7e4c7314228577a6c5a4272023eb1a762bde65f7ea332"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v16.0.0/xcsh-linux-x64.tar.gz"
      sha256 "315dc884616aa7f4d309941c949d5c244bf3e7807485d07af71acdbdef12b6a8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v16.0.0/xcsh-linux-arm64.tar.gz"
      sha256 "2000c29b62f080a3e407bb38a5940ace0ef76b22774bdae320e496255626214d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
