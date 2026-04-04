# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.16"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-darwin-x64.zip"
      sha256 "286ecbb515747f85c94bbb7f05a9260531330563538b07a2fff994c7d95e4c6f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-darwin-arm64.zip"
      sha256 "87a036dd9dcf3580ce8b07809ca86a8edca5f35ccf61cd8906dbc7f46e310997"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-linux-x64.tar.gz"
      sha256 "16359a23279720e4cbe3a297630b425deee004523dfe2854b9f1fb4750f7cfd7"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-linux-arm64.tar.gz"
      sha256 "2c5d3d656ce4ede4ca2da0379d15e33a8adea253be433ed797f1dda40fce3fbe"
      def install
        bin.install "xcsh"
      end
    end
  end
end
