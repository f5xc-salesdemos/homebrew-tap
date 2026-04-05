# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.15-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.2/xcsh-darwin-x64.zip"
      sha256 "eb15ddc845e450c2afbc6ca698deb70ba1f3eb5ea2c39210fafddef87d1d3fbe"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.2/xcsh-darwin-arm64.zip"
      sha256 "a5a627b24fa3bad7e22cb5606915c6ec7cfc9d616c543bbd125e593d7b279dc3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.2/xcsh-linux-x64.tar.gz"
      sha256 "c1136e974fac661adf6235d765256d77b6c3a7b79238b740eaa98922dbf1c661"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.15-f5xc.2/xcsh-linux-arm64.tar.gz"
      sha256 "ba51ea6e3eca9f2d6c72feb057b05df6d06589eef45df387461c85ce3b767276"
      def install
        bin.install "xcsh"
      end
    end
  end
end
