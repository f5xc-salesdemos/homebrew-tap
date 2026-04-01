# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.1/opencode-darwin-x64.zip"
      sha256 "eebce4ca60843939636914fd5e3448ce16d4c59d425c128875fbd93f1124ee14"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "54661171a7419c94f814de874c42e54cdc68523da5c84af1dfc254b126c43ffb"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "de52295449b2bbcf17e12230c27eeb5030d80655dac913b7d3fd4aa008cd5205"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "e93638e9a498b1ad53735cde3a407b11b85797fef4cfe8fa844d2a5f16f7b23f"
      def install
        bin.install "opencode"
      end
    end
  end
end
