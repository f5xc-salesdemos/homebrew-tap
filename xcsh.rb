# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.48.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.2/xcsh-darwin-x64.zip"
      sha256 "fbdfaaf42f5555c09eac2bfa0119a5f8a3dfbfbd9507dfc901bf4f83e5f991e2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.2/xcsh-darwin-arm64.zip"
      sha256 "b0d1cd6e8f792b47cfc6bd0ff4634505fb462b6c637dfca17ef61745640ccfac"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.2/xcsh-linux-x64.tar.gz"
      sha256 "20b9053c1841b2971f30f37161a6628e004892af3bd59433b02d1d7d928339ba"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.48.2/xcsh-linux-arm64.tar.gz"
      sha256 "d8902ccbd1ef9bbb795f7df196fd2a8f2218ba6f794b8a166145081d98d48ee2"

      def install
        bin.install "xcsh"
      end
    end
  end
end
