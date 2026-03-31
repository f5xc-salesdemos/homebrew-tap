# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.9-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.1/opencode-darwin-x64.zip"
      sha256 "a5caeeb3ef2b9e802aaac169b2d40133368b9eb0425ac4cb05fd1d28937cb730"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "09f34ba9605fe52e02d69fe3a5884295acbe0c14769015be57eedac66fd7c31f"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "032d4ddbc63e03d9add172bd3b35a6f28d72f48504cc15739e212d7da40b3fc0"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "f312683c87080b10364e80ff646250eeb7d2341853525b0ef34372f5728c3776"
      def install
        bin.install "opencode"
      end
    end
  end
end
