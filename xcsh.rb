# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.14"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-darwin-x64.zip"
      sha256 "83a3d75f683421d1657ef4cf2cbcdd7d669dadddba6832f92fb5221e7a1c2deb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-darwin-arm64.zip"
      sha256 "55a5a83254b0e81484bb341ff311146186980fd3ab6059308d815f40c51f6c26"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-linux-x64.tar.gz"
      sha256 "897592f4314ffe1a19bd85cb87dc51a72bb0bb5bb14a6e00ae04cdc4a3049d4f"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-linux-arm64.tar.gz"
      sha256 "dc5e218424821c7166c7868f2974bedaa7faad46618d4c04f0b63dacd221eae6"
      def install
        bin.install "xcsh"
      end
    end
  end
end
