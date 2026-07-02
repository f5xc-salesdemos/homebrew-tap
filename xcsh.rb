# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5-sales-demo/xcsh"
  version "19.54.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.54.0/xcsh-darwin-x64.zip"
      sha256 "f68182535865eac4b62067914571edd9873a87f3734e3bb7a85f443683f73826"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.54.0/xcsh-darwin-arm64.zip"
      sha256 "f2055af86cc8f58437ea2c770396452e93569c31b3c18b7e592abb08f96c80a9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.54.0/xcsh-linux-x64.tar.gz"
      sha256 "d46dbd833aa224ebab609da4f2c418cef7b76716cdd4e26c3ecb3f052e5d6286"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.54.0/xcsh-linux-arm64.tar.gz"
      sha256 "f5d6b30b4001c4b2afc9f8c628a659813fea8a30fe8463f1aa225c59416fa84e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
