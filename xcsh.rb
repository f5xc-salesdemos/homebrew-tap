# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.17.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.17.0/xcsh-darwin-x64.zip"
      sha256 "82ca6bce2b7414ed5f89cca83f2dcba9cc38fb3bb073af8b84c0f47ffdf29fc8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.17.0/xcsh-darwin-arm64.zip"
      sha256 "d7f24f7546487d62060ea4507093b35372b6e1768687fb5da4dfb60f7005bccf"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.17.0/xcsh-linux-x64.tar.gz"
      sha256 "8c0250f673cb6f487af8ec829d55e237a008666dfecbf9717ad655f69d56405f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.17.0/xcsh-linux-arm64.tar.gz"
      sha256 "b6eb5794de7e93326190e8863332ba4dba80279ba50780bc952c1c33ed3e968b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
