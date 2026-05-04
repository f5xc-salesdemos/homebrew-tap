# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.37.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.0/xcsh-darwin-x64.zip"
      sha256 "dfc5d9f6dd741daa435e344634d59aba0aab4126384c0667e4e1b36fbf32df2e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.0/xcsh-darwin-arm64.zip"
      sha256 "85c8db9fa2b21e3a041ab143ffd0e6910dc5ef2571c301ef83b95457ff3302e4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.0/xcsh-linux-x64.tar.gz"
      sha256 "82e23e1f0caa5eae3b2a85133ac4906966972503d743a1a4a75d325e626e03f0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.0/xcsh-linux-arm64.tar.gz"
      sha256 "f103a0af8514b47dedbe98339edfb3b2f4c313fd8d9933a1d2fbbc7663c9669d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
