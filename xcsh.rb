# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.18.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.1/xcsh-darwin-x64.zip"
      sha256 "74c1be36060fc83dbd152672324785703d20a3f19c0270bcb2e99edefc323ac7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.1/xcsh-darwin-arm64.zip"
      sha256 "4dbeedc6da3ce47ba6cba60769ab177a6cdf5a67352376c39679ae3237cfee73"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.1/xcsh-linux-x64.tar.gz"
      sha256 "0fb82ea608fe638c3864064f96ffb7ea539ca114865912d405de144855d853a2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.1/xcsh-linux-arm64.tar.gz"
      sha256 "70bbf72ada73a3f730ce4ec979917f456a0a9cd802e190b27aafc1cc9d992cc1"

      def install
        bin.install "xcsh"
      end
    end
  end
end
