# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.51.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.51.1/xcsh-darwin-x64.zip"
      sha256 "7b5a574735921a4ab14a89f0199d9f3b7fe03c84642985e97efbc0dbb9116959"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.51.1/xcsh-darwin-arm64.zip"
      sha256 "6f6daa72f61517604acd75009381fcd5df952f53d1eb570a6055198c7b70241b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.51.1/xcsh-linux-x64.tar.gz"
      sha256 "b6466926fa71d4467221449c5220be2b1e855f329c507bf3a2f3d734a07779b7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.51.1/xcsh-linux-arm64.tar.gz"
      sha256 "ab5f1ee07f213e6fb5e2c9484ea5f1eb5ed45c1049139b482b150ed6e10a95cc"

      def install
        bin.install "xcsh"
      end
    end
  end
end
