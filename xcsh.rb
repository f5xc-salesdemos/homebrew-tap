# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.44.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.0/xcsh-darwin-x64.zip"
      sha256 "7446904f2bfe11fc0300b70aa8e10b7431cdca8bbf94fcca11f009913050a2d1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.0/xcsh-darwin-arm64.zip"
      sha256 "fb09f6c58529c78f7f0fdade17056df222b97319941dd16bc3e95aabcd8e363a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.0/xcsh-linux-x64.tar.gz"
      sha256 "13f3813a7504fda2150a0b353b92874ea9a5d47a4ea4b6968be719127f5a4e47"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.0/xcsh-linux-arm64.tar.gz"
      sha256 "dbffbad5c0bf936cecd323148392fa015fab2a10aa609bf948903156a88ddb7a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
