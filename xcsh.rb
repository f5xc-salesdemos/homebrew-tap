# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.32.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.32.0/xcsh-darwin-x64.zip"
      sha256 "69ee32cb5c46aab1c67683d5978b3983857a1270bb2e46009d4489b87b8f9bb1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.32.0/xcsh-darwin-arm64.zip"
      sha256 "241ee66c510841ef52d0f0220ba1db10b8007058c17b59f6553c60053e62726a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.32.0/xcsh-linux-x64.tar.gz"
      sha256 "ffa24a6b36b4ab73725ac7ae60c1b01a9093313e1c1cf1fd66aeeb18eba3141f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.32.0/xcsh-linux-arm64.tar.gz"
      sha256 "05612075684f28f21c053faa45210e8ff96e29d6f347c826917c4105c11fe235"

      def install
        bin.install "xcsh"
      end
    end
  end
end
