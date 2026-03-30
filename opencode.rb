# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.7-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.2/opencode-darwin-x64.zip"
      sha256 "eacb830f4c96d90da3fc63befe0db26e9e13433e998e545d070b5d18d4dacf5b"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "cb492c0f3e10082c60c4515e629abda5e52788322d96a0034f3bad18578e2ac0"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "6a0f1510baf77c0412778788214d548c5e526243321d3ad84d1244103637b8ac"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.7-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "681ab02af35d61f3aa734ab047f976512b01a853e146d646ba80cf203c17722d"
      def install
        bin.install "opencode"
      end
    end
  end
end
