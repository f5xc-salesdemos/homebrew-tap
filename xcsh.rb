# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.30.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.0/xcsh-darwin-x64.zip"
      sha256 "7db60ee97c9f75b83299f9fd7bab742b072c3b72113a5d6b9a3e8443fbf11c14"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.0/xcsh-darwin-arm64.zip"
      sha256 "621e1241636ea34c59f8c7b20fe501792b403973007d09eeb10c4f00de45eebb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.0/xcsh-linux-x64.tar.gz"
      sha256 "d86b43e6c51e2584d8e7aa6eb8ed3b5ee91738ee6df75ad9b03aede03c89de44"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.0/xcsh-linux-arm64.tar.gz"
      sha256 "f29717b6e416f0d2a90bc70140b00435d4bc6e823c45f02ee0f915ccb671585c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
