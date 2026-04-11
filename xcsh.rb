# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.1.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.1.3/xcsh-darwin-x64.zip"
      sha256 "68715c2273950459171c7458bfaee275ba4ee4ac9d7cbd29fd8f175d69087703"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.1.3/xcsh-darwin-arm64.zip"
      sha256 "41aaf0860a96c0a3c5a6bd4ab5a2c7b9fcdee1bbd21747c9090d998a860b8378"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.1.3/xcsh-linux-x64.tar.gz"
      sha256 "a2a73d161485b8235e90d45f7812f2936c92540b66a7daa2a7d22d6f00c5f352"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.1.3/xcsh-linux-arm64.tar.gz"
      sha256 "34808dab0df5b697d1a4592d3eed1e40d737eaee0c9c432342fae99d34cd31bf"

      def install
        bin.install "xcsh"
      end
    end
  end
end
