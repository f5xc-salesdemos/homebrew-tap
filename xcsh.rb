# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.4.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.2/xcsh-darwin-x64.zip"
      sha256 "3e66aebee7a923dfda9b909252822b7455148531df15ccaabe9437722c010b75"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.2/xcsh-darwin-arm64.zip"
      sha256 "735bf89873b344cc4901a184a8cce3fe15437a7372a8560671dd1ca8b8df7ab4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.2/xcsh-linux-x64.tar.gz"
      sha256 "818da3d9c15b888948774b7820bda32bc1153f0342bc926f0bb3f014a4cc82b5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.2/xcsh-linux-arm64.tar.gz"
      sha256 "20545ca34a0dce54825ef0a238b6500b41d3d43dcfa24db160e28eb9dc3ee0f1"

      def install
        bin.install "xcsh"
      end
    end
  end
end
