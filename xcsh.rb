# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.66.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.2/xcsh-darwin-x64.zip"
      sha256 "0867e74593c846eda8d6fbcc156861b6a2f3580b283329d0bed5d0a50c3b6aa8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.2/xcsh-darwin-arm64.zip"
      sha256 "0befa878d9cc77c8d59164876656528eb04a3ab58ce7ce6ce25bd66913691561"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.2/xcsh-linux-x64.tar.gz"
      sha256 "b22a01bd6baa3babbcc0bda65cab817db58e2f5dd2a146fc2dbac817caa49d73"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.66.2/xcsh-linux-arm64.tar.gz"
      sha256 "b5b4edeffb88cf2dc07c97ec89640b432608902412cf588f7291cbe1f4a4c277"

      def install
        bin.install "xcsh"
      end
    end
  end
end
