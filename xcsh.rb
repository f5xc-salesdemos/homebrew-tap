# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.51.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.51.0/xcsh-darwin-x64.zip"
      sha256 "95ef78a29d5741ccc5f6c16722043554e293c08a7cfd0e473fb567c94829993d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.51.0/xcsh-darwin-arm64.zip"
      sha256 "d36bb3dfffe9000bff6d6e76144dbc06874975926fb05a67310613db14b058b2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.51.0/xcsh-linux-x64.tar.gz"
      sha256 "50d71045d99f0027e7c27bfb1991588f41dededeb5fd6644d6f1c530a110e3c3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.51.0/xcsh-linux-arm64.tar.gz"
      sha256 "fbfe6598fe04e6153ead3940def600a2b47d792610757f99e0501196a0c1f395"

      def install
        bin.install "xcsh"
      end
    end
  end
end
