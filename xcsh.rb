# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.33.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.1/xcsh-darwin-x64.zip"
      sha256 "8a9669379e1c091bdadee50d3c30a672c6460efec5f57357e595121ccbe3cbe9"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.1/xcsh-darwin-arm64.zip"
      sha256 "9bc3a46b4ba482e3138aa646566a257600239e1f86b7a7dfa4255c8f13811ddb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.1/xcsh-linux-x64.tar.gz"
      sha256 "eebff49028b2d1783ee507ae9ea4eb2a32de4d020b0bd5ebf149a9e3aed3641b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.1/xcsh-linux-arm64.tar.gz"
      sha256 "0bf42906f02fe1af6bb970bd5d0d87a2f18973ec46cbe9a7878b18ed20d0b970"

      def install
        bin.install "xcsh"
      end
    end
  end
end
