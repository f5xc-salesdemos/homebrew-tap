# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.16"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-darwin-x64.zip"
      sha256 "afd0d17ff86258f3b251fea4244e149684fc5f258fc8ef702aadf280e6004c22"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-darwin-arm64.zip"
      sha256 "55e3f5f13ef173d49487cff9dc3f20163d57c9f41b8b986191a546ceda2fe9c8"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-linux-x64.tar.gz"
      sha256 "254b39ae2357dd1a10165950aaef0ee32b410807baacfee3f5984ccb08c2ab2e"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.16/xcsh-linux-arm64.tar.gz"
      sha256 "baa6e9d00a68c63ee33708b5e2fc8775b1bc15b953bcba656d5e9e748e65419d"
      def install
        bin.install "xcsh"
      end
    end
  end
end
