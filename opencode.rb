# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.6-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.1/opencode-darwin-x64.zip"
      sha256 "59e1f7b9ee5a2b478beb170c85cedac114442a16f4f8460237eb9bcdd108360d"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "6a31d6413dfbb5bf2c3f66ae8b11d895d55a1d31506d7a869c25e42b48c54e9c"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "2c5eacfcea1ef58c6e01053e19a35949e1fcfd8c2951c5072dbd31bdf9c71e1e"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "5470987b8cec8277481d5e99252e355bdfc38a7cd69097ac8fb7bf6d853043cc"
      def install
        bin.install "opencode"
      end
    end
  end
end
