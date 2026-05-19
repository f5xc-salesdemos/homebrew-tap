# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.71.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.71.0/xcsh-darwin-x64.zip"
      sha256 "1fe027b29fcd7a18eb896f997fccb6e3fca84a3e77ba60c8146d9b3dba199883"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.71.0/xcsh-darwin-arm64.zip"
      sha256 "64c2b05aafd5d075c1c4ccae2d66725d24d6724107224c76340c5f36797034d1"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.71.0/xcsh-linux-x64.tar.gz"
      sha256 "fa4e8063b03bfa88e8004b5fe565475081d8557ab72d30a4c4e241f845e20fcc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.71.0/xcsh-linux-arm64.tar.gz"
      sha256 "a0002cff3eaf87fce94e845b51410cd9c0a3a1b763ea2e1843122a98b4893c28"

      def install
        bin.install "xcsh"
      end
    end
  end
end
