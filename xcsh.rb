# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.0/xcsh-darwin-x64.zip"
      sha256 "680a45c23f468653f446f0bcca870bbec781a0808ca6ee9196535157062c353e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.0/xcsh-darwin-arm64.zip"
      sha256 "80a07785ab24092f484455bfb8037b7b58aa72bb6afa354d3877cf43acf6f7cc"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.0/xcsh-linux-x64.tar.gz"
      sha256 "d7f07044c54f4fdb82ad3103a56e6ba51505f815622c6801a767b385bae04176"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.0.0/xcsh-linux-arm64.tar.gz"
      sha256 "8c85eb581f5f434acf108d9b276440c8a1a5b33e1c064f299192be8ebd0a8f79"

      def install
        bin.install "xcsh"
      end
    end
  end
end
