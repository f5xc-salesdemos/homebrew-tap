# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.86.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.2/xcsh-darwin-x64.zip"
      sha256 "bb28f88f8dbb1da623a45c9b3c1beb4f432e7a99f1191eee90859b7bbe5ebb2b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.2/xcsh-darwin-arm64.zip"
      sha256 "02c80592cdcc256088e7b3d082c0cc698a9607474eb1a7a8ff9f6a1eb8ac4b79"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.2/xcsh-linux-x64.tar.gz"
      sha256 "d12466f7de16c54e8189b17a1aefbcafdc0ad8ae5dc3f027e427c8347bb60b98"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.86.2/xcsh-linux-arm64.tar.gz"
      sha256 "a7f5bdb37e7b23e8b9a7ea3800272ab9ad94fe0909bd92e5d01f32ff601c7c4d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
