# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.16.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.16.0/xcsh-darwin-x64.zip"
      sha256 "c0960e7db60c186daf7dec3c8ec61f2360707107a49008196c61c120695d3520"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.16.0/xcsh-darwin-arm64.zip"
      sha256 "cfe5dc950525999dc6e4f626ba2de12c8dd6bb84dad9e80bb3c6b70d8bb713f3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.16.0/xcsh-linux-x64.tar.gz"
      sha256 "046057f60dab9edf71b12591ab6abf5852463261570324e926af987ff716ecc7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.16.0/xcsh-linux-arm64.tar.gz"
      sha256 "2608c7c497ed2a02e14bc474966324dac0e76996b9eac048830afb93db44a77b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
