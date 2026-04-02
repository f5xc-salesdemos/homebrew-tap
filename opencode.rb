# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.4/opencode-darwin-x64.zip"
      sha256 "c589c60611e55692b8f53170d70cee04f33e8beaf32e288c59bb92b274530fe4"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.4/opencode-darwin-arm64.zip"
      sha256 "aa130009144bb9a05b03b55d5f0170214fc0e0169b56c8af97f82713db3da141"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.4/opencode-linux-x64.tar.gz"
      sha256 "40b56115687ff6d59484e76926b84a79674a63a3e7764f8551b10b8abe46065f"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.4/opencode-linux-arm64.tar.gz"
      sha256 "bd713d6a47153ecdd4fd9c0c35c1d9129dab67ed51e06e087b6e31eb91a635a0"
      def install
        bin.install "opencode"
      end
    end
  end
end
