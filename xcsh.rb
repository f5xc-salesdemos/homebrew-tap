# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.84.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.84.0/xcsh-darwin-x64.zip"
      sha256 "12cf372f09e11d34ff11759f1e6f82d41da99b7db3d223fff7eda60841135286"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.84.0/xcsh-darwin-arm64.zip"
      sha256 "434cdc6ccd276eda303e52d7f9684dd48680bbdbf982edb7a9a2b44c22c72ac5"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.84.0/xcsh-linux-x64.tar.gz"
      sha256 "508686d3d9e6fb27fdd79898d093855d4103e375b9def228537972e6aba0a421"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.84.0/xcsh-linux-arm64.tar.gz"
      sha256 "5d799c3c342d459faf90ac3b191d1c7211dde77c51bf3e856078d5e133233793"

      def install
        bin.install "xcsh"
      end
    end
  end
end
