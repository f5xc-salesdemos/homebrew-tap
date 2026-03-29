# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.6-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.2/opencode-darwin-x64.zip"
      sha256 "f7e416432afbbed10bdb66dbf1efd903fb63d43f6b454c5f0b909c261347dd1a"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "5f89cdc9f554c5d1b34674b6100f464ee739b64cd91bb4702a5232e02e85e0bc"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "175ff03117051ead767136157dbc2917d24588209092bddb0098ec8df9eac8ee"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "a364f8ed22ea51cc03dbd59d0238c73a5c0ae324a1808a780c20e1606a23e34f"
      def install
        bin.install "opencode"
      end
    end
  end
end
