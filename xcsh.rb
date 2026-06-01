# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.91.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.0/xcsh-darwin-x64.zip"
      sha256 "e6e8f42be1e651c019fe2f7beacfc1a16106b92055008fe38a24b338948bb995"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.0/xcsh-darwin-arm64.zip"
      sha256 "27ee546473ffbe04188b817b63be35d149d597db6d41a0e62d993b4b3401fd79"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.0/xcsh-linux-x64.tar.gz"
      sha256 "5f093022afce7b75e2ca2707f259c37dbe22253334d121280c9208f91e2ccaf0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.0/xcsh-linux-arm64.tar.gz"
      sha256 "632ce442df9ce3e165d48967adf2ad6262afcfeecec63517c729f90b9337e20b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
