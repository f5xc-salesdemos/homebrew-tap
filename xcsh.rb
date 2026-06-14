# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.29.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.5/xcsh-darwin-x64.zip"
      sha256 "d379dc92578745848e045977b099a27812ba0c123e9dfc5258eea4a08bb02c98"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.5/xcsh-darwin-arm64.zip"
      sha256 "888b2e183a06cab6d2fe79a2819bdd75b0c088793d9f919bb499bfc18a87c9ca"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.5/xcsh-linux-x64.tar.gz"
      sha256 "4c1f0688f7e29ea8a32676e3312dc743c3733438ea3040d276774bfde77b4526"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.5/xcsh-linux-arm64.tar.gz"
      sha256 "b2725d1ad3548353702d5569b6f1d05c485b72d5660f4b2ba0777d3db0bdf655"

      def install
        bin.install "xcsh"
      end
    end
  end
end
