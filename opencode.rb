# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.3-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.2/opencode-darwin-x64.zip"
      sha256 "703a9c6fb8000a2ea066f0c8e2dae8b7159ff612e732fb865171e8c69374c5af"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "48dea2df49af077f71b0b057be56c39d4f1c7b43a3d80014a7d633a9ec187d51"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "295b8ecd7a9e11e21b231264c7e7532f50e853fe9ad0c35afe901edc4e718f31"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "c101bc459908387e9ab522842a93fa8fa14662784f32849447adddfdb40252fb"
      def install
        bin.install "opencode"
      end
    end
  end
end
