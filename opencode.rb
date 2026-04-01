# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.2/opencode-darwin-x64.zip"
      sha256 "951cc2dd15cbdcf9fde6125ede763a27752ad42873f3ad835236cd64ee4c1436"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "69a20a431cf33d53fcd45dcaf1f539100781b54559dbf150ea021eeb999d8c82"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "2dd9c0c51c37dd6fa974f8e84a6382eea3c694c8a0e57effd84fb427a03ee285"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "e18593b202b7e8015f5b7afafa8c767b3c254ee2c72ff2b214b97dd52fbd9185"
      def install
        bin.install "opencode"
      end
    end
  end
end
