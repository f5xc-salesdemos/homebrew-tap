# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.46.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.46.0/xcsh-darwin-x64.zip"
      sha256 "dca68a6b337e18c88fcd50244ff929f59418bba7c718380f9c9f37e48ef90351"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.46.0/xcsh-darwin-arm64.zip"
      sha256 "53109b7e8718dc57a26fa018aa063df1ce1e683b787deb24f8e4dc6de6048eb6"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.46.0/xcsh-linux-x64.tar.gz"
      sha256 "974f162e2af2a407e6059d55d46c5e582086621b4baeb12beaa501a8c05ceb92"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.46.0/xcsh-linux-arm64.tar.gz"
      sha256 "44f85ab0373e6986eafb4332e391654a6abd417010f3f967b579b80dfaef65eb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
