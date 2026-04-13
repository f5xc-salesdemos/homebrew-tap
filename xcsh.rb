# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.9.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-darwin-x64.zip"
      sha256 "63f1d24f2cea8553b19b24f2ad26b96d2dcd32d7f0fc6d54b85f4e710edd5c85"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-darwin-arm64.zip"
      sha256 "8ada0d79b7e9dca794474548a5fdb8cd545ce5648c428e722b6e25b5f530ad4e"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-linux-x64.tar.gz"
      sha256 "84110ba5946fc917946852eb29ac11b2f7b78b97fb8ce19ba7328e4af3c0050c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.9.0/xcsh-linux-arm64.tar.gz"
      sha256 "bc3981f5feb881796dd9a381e4d09bd33eda547c126490add8c347dbe4cd4a7a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
