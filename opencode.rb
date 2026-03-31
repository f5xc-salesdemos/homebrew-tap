# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.11-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.1/opencode-darwin-x64.zip"
      sha256 "b5f8b81f9d2ddb819ef92706d4218a2ece535cdfa168256ca7cd0be29b8289cd"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "8cf4ee4d6a9e8c34ee3be1c9ee87c20d112ffe025c3a03ea9a0aaae5f3bbe9e5"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "a7071e92af05e022e5d74f01dab0e4554209dbf51b7d88ac890b68a18b8fa78c"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "0db94db2f96898c6a0a2c1ca8ae4f44311a66eaad090876fdcfae1d8ebb3a763"
      def install
        bin.install "opencode"
      end
    end
  end
end
