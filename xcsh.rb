# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.75.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.2/xcsh-darwin-x64.zip"
      sha256 "1b509e7a762a38e25f79e27572513ed51028ee22c449ad0c1f44662aaec9aa3d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.2/xcsh-darwin-arm64.zip"
      sha256 "53efa419ca2bfb3e1e98fce8f354b865b4297ded3daf4c5a6d8624224d5a4da3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.2/xcsh-linux-x64.tar.gz"
      sha256 "b6d84daef5a5f1606957cb2f08d56e481b19853f5963911c1beb5c9173b74810"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.75.2/xcsh-linux-arm64.tar.gz"
      sha256 "1248e87bc487dea79f7b986eaad399f311b724cd87a210c89b69cf81cd2454e8"

      def install
        bin.install "xcsh"
      end
    end
  end
end
