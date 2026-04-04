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
      sha256 "d388638d3c317c0904a8cd67fa63f6d5b5ead4fb6e221e67d42596ed4bd463b6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-darwin-arm64.zip"
      sha256 "de5ffc746b280122ba7530e3c0356270b14f4be6d51d352d7791ab929f3aa46c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-linux-x64.tar.gz"
      sha256 "ba39bed29111e220d567c04cec0dd29ae638303088a4a3753e8d4e5ce48a4fef"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.14/xcsh-linux-arm64.tar.gz"
      sha256 "f5c0ae46b408264db096bcf323145e5b9b180756f5622fa34255e516584ce73b"
      def install
        bin.install "xcsh"
      end
    end
  end
end
