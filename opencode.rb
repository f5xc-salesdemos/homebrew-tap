# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.6"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.6/opencode-darwin-x64.zip"
      sha256 "89b15855c9f2ef843d2e2e8c045dfb256e839aaab05ecee2a3258cec87c6c164"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.6/opencode-darwin-arm64.zip"
      sha256 "0583647b0fa5e75f54a589fca7ad8fb8166bd7709ca5ff3dff5b83450dc287d8"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.6/opencode-linux-x64.tar.gz"
      sha256 "a2b83a4ef2a7f93dc3ea371ef750973070ccf1b9626c7fbd6403d17336433605"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.6/opencode-linux-arm64.tar.gz"
      sha256 "acb428e39eb926a3501773a5f6a802186606f88f6e7309b9d3c33e57227559b9"
      def install
        bin.install "opencode"
      end
    end
  end
end
