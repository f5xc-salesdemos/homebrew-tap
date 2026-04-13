# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.9.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.1/xcsh-darwin-x64.zip"
      sha256 "d0146a566362e4d948828d578d394808afd15f8af361eb73cd3cb8a46812d421"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.1/xcsh-darwin-arm64.zip"
      sha256 "73eedd6e76f3361a3330bdf97e724476357420afb4bab385ee0d6a3bc440d9df"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.1/xcsh-linux-x64.tar.gz"
      sha256 "7209c4601fbd79d3682af67576fd3d89a8bddff20b881a081857b90a963d4cfd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.1/xcsh-linux-arm64.tar.gz"
      sha256 "0ab725ffb6edaca4436e7d29d2984eae2d061176d500bcb0433a25cda28b82a3"

      def install
        bin.install "xcsh"
      end
    end
  end
end
