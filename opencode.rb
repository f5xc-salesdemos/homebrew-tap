# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.9-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.2/opencode-darwin-x64.zip"
      sha256 "730aeeeba7e8132e3e6ca492532ae2d86ab40311d493bfad41ae3dc82924c627"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "da91805985451677ed8b6d55247d74de493e55f1a5db31ac7fbd954426c7ceb8"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "e7cca51412dbb42b34cd54bd7a1cb50f954cbf28f576bf363e9a8ffc542f2402"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "7c75a7d65ecff21c65c695edc81780af65bcf9459dbb9df66522e80dd8d0273a"
      def install
        bin.install "opencode"
      end
    end
  end
end
