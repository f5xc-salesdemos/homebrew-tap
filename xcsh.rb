# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.64.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.2/xcsh-darwin-x64.zip"
      sha256 "fc58fe29d86712604d500ffa49fab313c7dd753ec5dc0e9e1d6525157f7104ba"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.2/xcsh-darwin-arm64.zip"
      sha256 "1909a7fa2eb98cdbe0f40fd2828de9e11fc3538c8e49c59fff0e388f91d5a5dd"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.2/xcsh-linux-x64.tar.gz"
      sha256 "cc31342e9d0d61ec43ff8fbef35cf9c0247ccb7857b23ea25c2e72f9b0a3772d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.2/xcsh-linux-arm64.tar.gz"
      sha256 "36835010812a25659f0e8b02eec9e7ef7916dcaa4f9d204daa17fdffe369ea84"

      def install
        bin.install "xcsh"
      end
    end
  end
end
