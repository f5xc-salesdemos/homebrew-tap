# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.40.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.0/xcsh-darwin-x64.zip"
      sha256 "41aaf3a6d440fa35f78353b07be40f58883511e8b2b5d5f02fc4a62336bb97e5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.0/xcsh-darwin-arm64.zip"
      sha256 "223912e2c491d80faf31e8f502e0d09db51490910e2814af737dd829bb033b3d"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.0/xcsh-linux-x64.tar.gz"
      sha256 "9f0225bb56dff35fac647298fbace046b5ed48925ea2d62aca435cbef9afdb2e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.40.0/xcsh-linux-arm64.tar.gz"
      sha256 "8bb8987a66b2cf316f1b77eda77b285bfb2f6c7e0237707f41abeb7ed8affc3b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
