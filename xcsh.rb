# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.15.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.15.0/xcsh-darwin-x64.zip"
      sha256 "454299c108b581fd57c3af6f692d8f7d59b8de76e213d342f54cfbad65904c0d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.15.0/xcsh-darwin-arm64.zip"
      sha256 "76d3581907bc99fe0afbd5d4b29d00e46a20af7983ba1b0363de9b0081c9135f"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.15.0/xcsh-linux-x64.tar.gz"
      sha256 "d3b677d394635cdd23f36e843d92646ec0b4e944c5e1b1552f7b7e95143ccd64"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.15.0/xcsh-linux-arm64.tar.gz"
      sha256 "584bdd18ffdb7a0e0e2765e3ab8c59b8ff50ec92fa88b49e9716be5630144429"

      def install
        bin.install "xcsh"
      end
    end
  end
end
