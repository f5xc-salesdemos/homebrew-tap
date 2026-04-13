# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.11.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.11.0/xcsh-darwin-x64.zip"
      sha256 "a95c13578aba58d93df6868c2ab0d049acb7486f0b87468b8f37f335a7ce6ea1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.11.0/xcsh-darwin-arm64.zip"
      sha256 "e643c5f87a8ed57930364d70f4f1d44798ba033000ac0d4ee9d878d72f8edd2f"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.11.0/xcsh-linux-x64.tar.gz"
      sha256 "6315043f23a802767044bef8620e9768fc6f34ede60b00330d62e0652ca39f75"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.11.0/xcsh-linux-arm64.tar.gz"
      sha256 "e56d7702f6afe397afa3575225c38990a64e9e7877c0afc94c79925fb2b22f1d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
