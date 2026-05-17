# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.65.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.0/xcsh-darwin-x64.zip"
      sha256 "26b181564209eecfea3bbc49ec86e0520c81fbd64ba35f791a424336ef8f4f19"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.0/xcsh-darwin-arm64.zip"
      sha256 "466fb00ecae11a1cddb854b70641c4ac4668e00f886862784ed828e1f89c6ea2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.0/xcsh-linux-x64.tar.gz"
      sha256 "5b5025b13a9b8aa82bbd6d24675436cd6f4a517bd8dd2809ac5939c328080452"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.65.0/xcsh-linux-arm64.tar.gz"
      sha256 "7b00c47043b64e761e3199acdf110654bb87c3da545dcb4839ee2e853ab66d97"

      def install
        bin.install "xcsh"
      end
    end
  end
end
