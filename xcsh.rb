# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.8.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.2/xcsh-darwin-x64.zip"
      sha256 "20aa0be8728a1e392404a5083350c7422067d2820fa5a0d1dacad4cfad387265"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.2/xcsh-darwin-arm64.zip"
      sha256 "7e0f747204f5e526a76085596b09ea32e9e7be7b6648584189d43ee41eb173e2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.2/xcsh-linux-x64.tar.gz"
      sha256 "5fc3fcb2e29e2bbb7b0a5adbfd95f4ef2e372f13f3b0f0fb8f5ace17ea178807"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.2/xcsh-linux-arm64.tar.gz"
      sha256 "1c3f38b5bccabccca1d22a90549ca3f8948031f2181ae7b2c2d7739a7a069607"

      def install
        bin.install "xcsh"
      end
    end
  end
end
