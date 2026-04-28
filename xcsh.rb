# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.20.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.0/xcsh-darwin-x64.zip"
      sha256 "0f684db70a50af7569923d7f1c9eed60bc7936e9a813885cb2223e4515775024"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.0/xcsh-darwin-arm64.zip"
      sha256 "12645de9d27f8c9be50241717f9185049d3ea86588802d4aaa2bf33379a70014"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.0/xcsh-linux-x64.tar.gz"
      sha256 "6c9c8deedb5e590bde43c72e41efe4ab994ae65629bec850279d04be304a93f4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.20.0/xcsh-linux-arm64.tar.gz"
      sha256 "9ea3b687c220a9567d75725739f60fb34d5398ba3fbda7ae81b3cbf212c257c1"

      def install
        bin.install "xcsh"
      end
    end
  end
end
