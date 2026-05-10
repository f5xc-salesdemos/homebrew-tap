# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.61.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.61.0/xcsh-darwin-x64.zip"
      sha256 "f872b10506aebda4ba08a8257ba7dd2bd7ba8e38ea2e32627a75806702422720"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.61.0/xcsh-darwin-arm64.zip"
      sha256 "f14b03dec382f60eed9263f096c53d9200c843f632cd43e31d0257c24e7af390"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.61.0/xcsh-linux-x64.tar.gz"
      sha256 "be6ab2fd09d19c7d76b86a126dd7fa7466b035dde58e68bfe9c9f3f838193552"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.61.0/xcsh-linux-arm64.tar.gz"
      sha256 "716a8b16dacf0d30713329d5ad0e32e062e5e9e433ee982a34f5434abd8e589f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
