# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.9-f5xc.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.5/opencode-darwin-x64.zip"
      sha256 "4c07aa1591c6f31fa5dd5edcb14266514a818f551f4108a00ab5036884c7dcd4"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.5/opencode-darwin-arm64.zip"
      sha256 "b29bd561c637c208ad78c92fd9128d8d9d76e77dfc30a9b06b375de6a3851320"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.5/opencode-linux-x64.tar.gz"
      sha256 "d82b5980124ac4b2725d22b6ab780355e32e063878713a2727178429015fdd89"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.5/opencode-linux-arm64.tar.gz"
      sha256 "2d61c86612509e031bb3ae3594f350c1bca576c01f408ccb2ff0ac803a926f1e"
      def install
        bin.install "opencode"
      end
    end
  end
end
