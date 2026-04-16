# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.0/xcsh-darwin-x64.zip"
      sha256 "f48e7e1cea058b20798639fa6270d4e8830e0d1ab501a94aa3369029a1ca43d9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.0/xcsh-darwin-arm64.zip"
      sha256 "fd3561ceadc21aa8b9060160a249dc13a6af0c7f9799ec012196d00f5cf00d5a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.0/xcsh-linux-x64.tar.gz"
      sha256 "52fa672397cf3811c2d496daf7f194c64f2f6b65dade9cacb9c321102b463e73"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.0/xcsh-linux-arm64.tar.gz"
      sha256 "cbd808611937e12c58f11d26e011676a23f369ad944e4ba2da8150a967b5aec8"

      def install
        bin.install "xcsh"
      end
    end
  end
end
