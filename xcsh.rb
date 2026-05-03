# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.33.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.4/xcsh-darwin-x64.zip"
      sha256 "067b77bf0ef96cb3fd06fcf239daa3e9b07eb2f9fd646153da9d651b9b7d93b0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.4/xcsh-darwin-arm64.zip"
      sha256 "1b8b60bc183e91dc16cb1eab221389ea8e9835ac165f6d813eba8ed7018fdcbc"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.4/xcsh-linux-x64.tar.gz"
      sha256 "624e594f0976147acc68c8202acd5a8181f15b48cdce60219bfae8c13939245a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.4/xcsh-linux-arm64.tar.gz"
      sha256 "dc9238050f3fb97ba41248f7a8522cdf98d6c6b45887748da9e89d64d139a119"

      def install
        bin.install "xcsh"
      end
    end
  end
end
