# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.9-f5xc.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.4/opencode-darwin-x64.zip"
      sha256 "cf3ddb893f3117382c91fb6fa1553d749e8ead88d410e60102908dd858edf53d"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.4/opencode-darwin-arm64.zip"
      sha256 "d622b1f8f6abd5008e98cef303a45b189d92f1489b638a544665abcde125f867"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.4/opencode-linux-x64.tar.gz"
      sha256 "f03784f33af893d325c6c7c5f83178abe053e49d803aac9a7c27128d611e07dd"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.4/opencode-linux-arm64.tar.gz"
      sha256 "136a6c01b052ba25bf2a90bdf279ef5b44f68faa2a185f9012fa785971f0a9b7"
      def install
        bin.install "opencode"
      end
    end
  end
end
