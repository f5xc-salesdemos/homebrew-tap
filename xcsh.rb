# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.45.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.45.1/xcsh-darwin-x64.zip"
      sha256 "eed04f74fdefd697789c9901f754da8ca77c2092ace5cb95f24ac3dbb7bc63bc"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.45.1/xcsh-darwin-arm64.zip"
      sha256 "2dc2a88aab90824bf38895a99332b310a7fbd46c84caa688a632852706efc4e7"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.45.1/xcsh-linux-x64.tar.gz"
      sha256 "58b5029a14d0320c40747fa76d47ddb6885e2f0d263012d05af04eeba0b800a8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.45.1/xcsh-linux-arm64.tar.gz"
      sha256 "2b68cbe5f44a3a2b1e3b6cc5e1b45d08b6768b640655b1fefc4fe892887320be"

      def install
        bin.install "xcsh"
      end
    end
  end
end
