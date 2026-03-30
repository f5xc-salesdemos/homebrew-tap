# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.7-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.1/opencode-darwin-x64.zip"
      sha256 "3ac059b27f7663fa6c8b88543d8c9926e6d0ea2cc2d7927b809174e0ac690d7f"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "a43e0db4d8681c12f86f68720e4ef6b7247978bea27bfa30ad53aedf7e95c597"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "60b5745f71d8cd7e9ae704b1f166daeca235aba134fd1ecadb62762410f1ea47"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "7681441aab583f257215a43f6b2d7f202a047a0d712952416134b157ca0bc9c0"
      def install
        bin.install "opencode"
      end
    end
  end
end
