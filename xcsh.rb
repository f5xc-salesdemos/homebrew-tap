# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.59.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.0/xcsh-darwin-x64.zip"
      sha256 "f41ff5d397927125c80165c998aadf09691ee70d86919c57f7094ec437b7bf3c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.0/xcsh-darwin-arm64.zip"
      sha256 "da5fa3edbc34315df62d12e879a2ed6239ad6e407e464967f2a6e1407aca8dcf"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.0/xcsh-linux-x64.tar.gz"
      sha256 "a53d9c3512c4609765666ceb5f62d71fa3b5a4d08993c50725a8295610bbac71"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.59.0/xcsh-linux-arm64.tar.gz"
      sha256 "9e3cae904fc9a905ed147b5aefa84dcd5c2961b5e200cab6d5311c8b35e5b006"

      def install
        bin.install "xcsh"
      end
    end
  end
end
