# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.4.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.1/xcsh-darwin-x64.zip"
      sha256 "903248bcab01018cc921a0e340b5ca39a944b3e183197ef6cbec71fa86d0b512"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.1/xcsh-darwin-arm64.zip"
      sha256 "539b7f6a87a06f8e94dd4b5b4b3c040f55207adcf82cde70e1ed6ab3af4174fd"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.1/xcsh-linux-x64.tar.gz"
      sha256 "afff2498702709449673488e76f7f8665bf0f97c417bda7b0dd007787dea92c7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.1/xcsh-linux-arm64.tar.gz"
      sha256 "44cf15eaa4141b4616d64a3e3f7d85d70bfdf36731a2da4a31edd0f610c88d48"

      def install
        bin.install "xcsh"
      end
    end
  end
end
