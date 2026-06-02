# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.91.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.3/xcsh-darwin-x64.zip"
      sha256 "2663c385bf31ee1682e5aa4742e418ae3e3e84c79af2d4c9abc72d09e178f8fb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.3/xcsh-darwin-arm64.zip"
      sha256 "0d4b6d0135307d5aacc05417ccdf80d0c28d99d62f9df8986ac70ec0d2da17e3"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.3/xcsh-linux-x64.tar.gz"
      sha256 "965de75adaebc0c37dd05ae82fd6568b22b5e22db3ff1bd1464c1bb4bb49cccf"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.91.3/xcsh-linux-arm64.tar.gz"
      sha256 "b43c4dbecc57db98d8eb471bce2f9651ecb064ffa4f2c873ff63a7db02ee02d1"

      def install
        bin.install "xcsh"
      end
    end
  end
end
