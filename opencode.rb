# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.3-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-darwin-x64.zip"
      sha256 "0fe9f7b30f6dae2899ff2867cd5dc5832597c4e5d440e0074e35b34eab4fd483"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "723d5d0d21ac5c725d78dd6fa9e58adc0a8443ecbc7b9c71b4be649c3352fcff"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "e07f132b9c9846611c1fc30dda40fb6e591fbf98c6f18343e07a494ae2ff9074"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "49888b9f400824638807f232a804db44d0c50716d5563891b051c254fef4885a"
      def install
        bin.install "opencode"
      end
    end
  end
end
