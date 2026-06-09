# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.21.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.21.1/xcsh-darwin-x64.zip"
      sha256 "b3e81d9654215c41c17541e6b5c62cb4dea88d5da416cf966d8b48631abd4c94"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.21.1/xcsh-darwin-arm64.zip"
      sha256 "0afe5a6de812af017c878153b4680ed65cf992efd9c4d06d753b0c41587e0ad3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.21.1/xcsh-linux-x64.tar.gz"
      sha256 "9aed9b157463b7ed92999e5978549ab3d959ce94437d02896f92d57d715a58b5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.21.1/xcsh-linux-arm64.tar.gz"
      sha256 "8bc26d97ad4b17b7ba72958e79f36f48e44fd16bb8c8e9edcbc3ef4194d5954e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
