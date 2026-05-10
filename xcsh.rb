# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.60.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.60.0/xcsh-darwin-x64.zip"
      sha256 "7d7cc9cd6a069d449858ef2314c4859876b3dcf4602718f4924c01d48094757c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.60.0/xcsh-darwin-arm64.zip"
      sha256 "887bf780fe1e12bbca268d74a05eeee4e608fa864efe4bde3363d9e655f3cf61"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.60.0/xcsh-linux-x64.tar.gz"
      sha256 "c66ad17a895da0260b589c66dfc901be23ee3c628987208f9febc50925bd8039"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.60.0/xcsh-linux-arm64.tar.gz"
      sha256 "81daaa59a11180d7ccba18efaaa11cf2b966a43eb76e1c8bcad4e40a2b370952"

      def install
        bin.install "xcsh"
      end
    end
  end
end
