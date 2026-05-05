# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.41.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.1/xcsh-darwin-x64.zip"
      sha256 "678ef5d41f7ed2a6bfed03ea79ba808ba1dd7867222a60a69a2a42c84159f265"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.1/xcsh-darwin-arm64.zip"
      sha256 "d575bfc200ed0568b8d13daecdbdc9755e2cc2de6dfd729dad764be9dfba3fdb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.1/xcsh-linux-x64.tar.gz"
      sha256 "c486f39e4df657b2f5ac169597a92d7f613b5cad38305c8d8c6a05353d0e4205"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.1/xcsh-linux-arm64.tar.gz"
      sha256 "365b2762030b724e11ff66669a8dd657d0ad6ea7289f61d250331b7cce3d8754"

      def install
        bin.install "xcsh"
      end
    end
  end
end
