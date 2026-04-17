# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.3.0/xcsh-darwin-x64.zip"
      sha256 "be73f0eb3090f7cead935d3a807b82af1e6a7bdecf9d3dc89fef331f50461719"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.3.0/xcsh-darwin-arm64.zip"
      sha256 "3a564215bcb11ecab682febd20d784e3175069dfebf612975076df877f0bebd3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.3.0/xcsh-linux-x64.tar.gz"
      sha256 "51db4740b1dc4205e2e01c196845eb44ef6ac27fa65f9e03af257aaff678d657"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.3.0/xcsh-linux-arm64.tar.gz"
      sha256 "a881204c77aab575e3e9da80ebcbb5b18969fab1d48d541b30c0cb06348c9182"

      def install
        bin.install "xcsh"
      end
    end
  end
end
