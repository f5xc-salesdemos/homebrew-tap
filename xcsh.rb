# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.0/xcsh-darwin-x64.zip"
      sha256 "b32007b93d742fb972eb842242a941083d62157e8730f9b74d62b66d7135bdb0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.0/xcsh-darwin-arm64.zip"
      sha256 "4931c1dede7d2eba42c5c76ebfc3dbe75e24f01024fede0874b02bf39c23fbef"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.0/xcsh-linux-x64.tar.gz"
      sha256 "4276f6e4f5690b9a19da6432f1f5e05fdaff3f91e5022304b18bd4e142a94182"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.1.0/xcsh-linux-arm64.tar.gz"
      sha256 "3fea610321d8305200648df68b85b18bf507fc7d6713ee556736c97ed2ba6301"

      def install
        bin.install "xcsh"
      end
    end
  end
end
