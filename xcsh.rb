# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.64.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.1/xcsh-darwin-x64.zip"
      sha256 "278aaa7d5406650a821457a5445bac43a81eda230f34cf4d81e82083afcb7cc3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.1/xcsh-darwin-arm64.zip"
      sha256 "b67d30626522b1b1c92447467f09f677794ebd16850a5fe8c7185206744229c7"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.1/xcsh-linux-x64.tar.gz"
      sha256 "db072ffdc48bc92592b98eeb4627f83dcd437903e09b92d0c82ccbc37835ab66"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.64.1/xcsh-linux-arm64.tar.gz"
      sha256 "5390d2f9269ad5c4099cc5b94c0ac81a5959253e3e431e9c7c152622125d5566"

      def install
        bin.install "xcsh"
      end
    end
  end
end
