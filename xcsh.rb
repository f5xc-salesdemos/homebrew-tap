# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.18.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.2/xcsh-darwin-x64.zip"
      sha256 "d7acd501cf1430ca9d2bdbf725e71bcede20547197b5a3f818e8dd3090a3bd78"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.2/xcsh-darwin-arm64.zip"
      sha256 "2a3dca57d8c3dce457c3334749a15acb1b359f1e6d21a427009edb677f0dfd58"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.2/xcsh-linux-x64.tar.gz"
      sha256 "a123307925fbd4397165f0db3b16c87f4b0fbfa8dda3ebacff9d487a2e11bc6d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.2/xcsh-linux-arm64.tar.gz"
      sha256 "9000aadb14e36c12e33312473ae67cdf1ba3530f4258e36dcbdf9a14fca3ff73"

      def install
        bin.install "xcsh"
      end
    end
  end
end
