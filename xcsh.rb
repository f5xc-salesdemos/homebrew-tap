# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.5.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.2/xcsh-darwin-x64.zip"
      sha256 "ff241fc9e768ebbc779680c5ed80ec083a2921a07ead09cf3059b6c833758bca"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.2/xcsh-darwin-arm64.zip"
      sha256 "7a26733e0f17bfdd1994499261042c8d79dabe51b603dcd69d60409e60d56a4c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.2/xcsh-linux-x64.tar.gz"
      sha256 "d707bd576ecf0418d2f0103875524dd41365235741fa769c79ccbf0a89aff704"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.2/xcsh-linux-arm64.tar.gz"
      sha256 "05fefb9a82fa6abd489c573ebaf936e9bd0dc43b98263c3902ec5fcd0cc67993"

      def install
        bin.install "xcsh"
      end
    end
  end
end
