# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.17"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-darwin-x64.zip"
      sha256 "74af7ee05b8fda61af818c9feb0c0aebb0de8bd3403e96bf23eaae31ab9b9df1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-darwin-arm64.zip"
      sha256 "4d8c515268717b493c8d664da3d742052d4b84d421945807453fbdae326dc459"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-linux-x64.tar.gz"
      sha256 "5de8c3a186c15caf514d4f6a8845feabc300ae828c899aa20ffa81a751ee720e"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.17/xcsh-linux-arm64.tar.gz"
      sha256 "6631f4d12ae4c82453b48d447d4f1748b1ef9f2a6b17208b457cae4a5275df98"
      def install
        bin.install "xcsh"
      end
    end
  end
end
