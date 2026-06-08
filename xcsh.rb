# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.16.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.16.0/xcsh-darwin-x64.zip"
      sha256 "4f46e70bd3bdc42fb0f9802d5b076da46ef01ca1d067b797decec2d69c707c02"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.16.0/xcsh-darwin-arm64.zip"
      sha256 "3e479caebcb47dee729c24f8e3c1616c18ff93d76d578be7933685cf6acbb7c7"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.16.0/xcsh-linux-x64.tar.gz"
      sha256 "0529dc19ac8b24b726a1256cf32853c621cb253f375e24b342040a5fbf721ee0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.16.0/xcsh-linux-arm64.tar.gz"
      sha256 "45b86324847e5c2d13397678c87789313efc141c4714f9f0e41ee44d730ccae2"

      def install
        bin.install "xcsh"
      end
    end
  end
end
