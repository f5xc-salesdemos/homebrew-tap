# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.35.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.3/xcsh-darwin-x64.zip"
      sha256 "973c82a723a93c6431bade2f358597d940639a9654d9d55b70317909aebe3be8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.3/xcsh-darwin-arm64.zip"
      sha256 "7cad713293b90863e26549f5de33bba1ee4f7e5e5f0fb77cd6e022aae6d93014"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.3/xcsh-linux-x64.tar.gz"
      sha256 "c2e7b69f17ee660ebd6f561fcc8d97379f952940a26c2824c5e207c2435c86ff"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.35.3/xcsh-linux-arm64.tar.gz"
      sha256 "c91229192be52bf3bc9751bf92cedb52b4c6d4c34efc14ba5f24481c543ba88d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
