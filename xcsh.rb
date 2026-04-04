# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.17"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-darwin-x64.zip"
      sha256 "847b34db76d6fe993ad059e3e0cfd1a6ab5f54171bc1dd0ac1fbb6337e7ca087"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-darwin-arm64.zip"
      sha256 "1e17e5d1f2fd3065669566fd72f546867c4ac5cd6cf16bdd69be707800365cd8"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-linux-x64.tar.gz"
      sha256 "affab41eec188bce765f9ba5a0827d5f0124ce8e96e9d808cafcb0b09b15366e"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-linux-arm64.tar.gz"
      sha256 "d7ad53a6589c0aeb6563cc0287e0884517487591ad108a301efa271f0e06e537"
      def install
        bin.install "xcsh"
      end
    end
  end
end
