# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.35.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.0/xcsh-darwin-x64.zip"
      sha256 "a99183888b302f724a94ca292fda7870f29840a16f96364f609ad669d59e8878"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.0/xcsh-darwin-arm64.zip"
      sha256 "5de9ddf209134e2afad38e018bbd64593dd055184a3fed07e459bce98387ae71"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.0/xcsh-linux-x64.tar.gz"
      sha256 "daeab73cfedf6b927b49add641e236a7a88d07cd519ffb1204597fa286c523bd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.0/xcsh-linux-arm64.tar.gz"
      sha256 "98012221eeeb67a6c311c109f66844c11f6fd28ff4ee824459da30dba9a3d66f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
