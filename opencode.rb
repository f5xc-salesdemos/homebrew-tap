# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.3/opencode-darwin-x64.zip"
      sha256 "a14facb4f3a020553260fbcbd2055fa0eebf1824594ab7a0d73ecc29f5bf8b49"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.3/opencode-darwin-arm64.zip"
      sha256 "2b55e7f7dbb1460280f95a60129590a27ff8a2db061f010579f42a30818f1926"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.3/opencode-linux-x64.tar.gz"
      sha256 "fb6de8c70d9e2c524fec700ed2196164f2af40ed2776dad8f48e6849de74d5c1"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.3/opencode-linux-arm64.tar.gz"
      sha256 "e33a99ec4617a5c8e7e8b363b423e03fc62b00ddc32ccddc882a2cd06983846e"
      def install
        bin.install "opencode"
      end
    end
  end
end
