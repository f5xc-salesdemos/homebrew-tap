# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.3-f5xc.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.4/opencode-darwin-x64.zip"
      sha256 "7c7698a04803b23aaabe3e86a79d7d200bc1e261a0f0623000595adcc011941a"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.4/opencode-darwin-arm64.zip"
      sha256 "6c832bbd90231555393e537f407026e70c8fe07a4f1f4c1c153bd64cb37ea34e"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.4/opencode-linux-x64.tar.gz"
      sha256 "b521a0e12c22f4be3b250f12e106235c25e471fc5bd0732783181eeaf8d2737d"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.4/opencode-linux-arm64.tar.gz"
      sha256 "3b64126406db6536ca4f8c85cd3913f96d140ecb4bff5beef687ccb5b6a7724c"
      def install
        bin.install "opencode"
      end
    end
  end
end
