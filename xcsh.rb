# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.15-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.1/xcsh-darwin-x64.zip"
      sha256 "bf73ead4fba667bdb2e7653d8f4a0c7528fc8afccd9c9142194fdca9f2b36698"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.1/xcsh-darwin-arm64.zip"
      sha256 "685379875e2341de7a7cfaf0b345c3a35c562a8dfafc2765141ad39a343ceffb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.1/xcsh-linux-x64.tar.gz"
      sha256 "c42baa121f5f346db7a565896105a22b87a5edf3d84c6fc6b818060119cb6e2d"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.1/xcsh-linux-arm64.tar.gz"
      sha256 "2812ba34ecc688efc6d45410844606002ca1e3f30a21abb7c74d8b25084568c4"
      def install
        bin.install "xcsh"
      end
    end
  end
end
