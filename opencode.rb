# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.10-f5xc.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.1/opencode-darwin-x64.zip"
      sha256 "ce1b49fcb38027e919d6efd11eacd55d1e0ffd7be982e1eea8276f826ea19746"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.1/opencode-darwin-arm64.zip"
      sha256 "04f6e2a8acf7b3c7fad74fa0f52930477176323ee0da40d862b36ab932e31dd2"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.1/opencode-linux-x64.tar.gz"
      sha256 "215954267410d749855306f845c22b07219f1a7cc522f520c75da0922fb2f927"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.10-f5xc.1/opencode-linux-arm64.tar.gz"
      sha256 "48507b6bcd30ff3f7d3dca095550844561f0bd8d3170164746f5feddbe26a211"
      def install
        bin.install "opencode"
      end
    end
  end
end
