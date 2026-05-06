# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.43.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.1/xcsh-darwin-x64.zip"
      sha256 "e00d7b982fd61bb90219cca63d252fb8902ef2e24bf4e4d620af8a8efa9f8ced"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.1/xcsh-darwin-arm64.zip"
      sha256 "46b8dd77d68a46f5891e42ca7471225acee602ea6d57b56227d354f67ba74a5f"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.1/xcsh-linux-x64.tar.gz"
      sha256 "36de121211aeb8e46e99cf7c3943bccec0d546b84954a8cb8a71b73647de0a71"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.43.1/xcsh-linux-arm64.tar.gz"
      sha256 "5ec47b0355e2c1ae63728110ef23eeb41a8748219cbf354dc78ee29a433ee7f7"

      def install
        bin.install "xcsh"
      end
    end
  end
end
