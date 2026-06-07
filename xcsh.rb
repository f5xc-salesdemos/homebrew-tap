# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.12.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.2/xcsh-darwin-x64.zip"
      sha256 "61944c51c37cfa30e46b1c324f3863c2848364fdebeb7f5371a4c2b590ffd809"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.2/xcsh-darwin-arm64.zip"
      sha256 "f5ec71549c66eb262ee5b4edf52c5dd284c95ca7eebab0b9311933aa979b2e9b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.2/xcsh-linux-x64.tar.gz"
      sha256 "f580b93cd060685dc11daf51a5dd6b7d5862985fdf5f91f94b8d0c49e2549ede"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.2/xcsh-linux-arm64.tar.gz"
      sha256 "dfcc585cb6d4e70f0423d7b8973587c078d3c7942273369cac39547df023630e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
