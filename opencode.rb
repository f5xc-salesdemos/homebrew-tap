# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.10-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.2/opencode-darwin-x64.zip"
      sha256 "593f0f2d3b2e9655a78a0ec97bb7ad86d1857edb9dbb8375e3722c7b5d805a3b"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "def1be23e0da10227d3c3c817464da131badb4e4b6188630dd0bdcd3f6597098"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "beec0b0870cba162657b1bf0f20717d58431f1358a42fc01c5626da86845dfcf"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "b1004096a042d7d6445585a8a8e56a19d5ad1d8553037af23a7743442ccacdea"
      def install
        bin.install "opencode"
      end
    end
  end
end
