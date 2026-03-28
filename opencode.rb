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
      sha256 "4f9d2a5108e2612f41c6eb71f22320ca27d29f3c057d72c13d51bb3d6ca0af59"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "3ff6f359640ed72c787b025f2737a8a660aba8c6e003c310ce4dbdb4b1319723"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "1333922051dd410ab8ebc9232fb440123c87a724f28e64f17207f8632dfb509d"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "ec3e445abba7d65d30a90fe7533357365854d8b7abf60a7e1aedd61d34d50230"
      def install
        bin.install "opencode"
      end
    end
  end
end
