# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.89.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.89.0/xcsh-darwin-x64.zip"
      sha256 "78da359fe7678c457bfdf8d871f7acd72f783b3cb8472b17e6f96bf719e7ce76"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.89.0/xcsh-darwin-arm64.zip"
      sha256 "dff6ef3cd70cf759d9a6b2730a0ff37c3b0e68cf6127a74d321d04f1417c2a9a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.89.0/xcsh-linux-x64.tar.gz"
      sha256 "24d117b823c3b235c65e04aa6238171bbfaface995cdc63294fbf4732c943732"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.89.0/xcsh-linux-arm64.tar.gz"
      sha256 "fae7a75d44e152c6c51d6723861f335d22b21235054b26e7b6cc8d98e50de183"

      def install
        bin.install "xcsh"
      end
    end
  end
end
