# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.5.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.4/xcsh-darwin-x64.zip"
      sha256 "4df26c5017ee355ec53ca070f8261411376f20e2e7faed89738e147371e2e7cf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.4/xcsh-darwin-arm64.zip"
      sha256 "9e889733ea17d2cf0a23c249ec45c2f3b919f52e8b5c1ea255a25fb9480d027b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.4/xcsh-linux-x64.tar.gz"
      sha256 "b8e8f67c60a02ee4f4625c53abe7e8170a2ca16a79f253efbd95c1b529a45e65"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.5.4/xcsh-linux-arm64.tar.gz"
      sha256 "1f33979906a3966122ea81d1319d8489107c0fbc789b63d1bbe174691c32af6d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
