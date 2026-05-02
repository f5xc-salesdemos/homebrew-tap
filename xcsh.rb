# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.32.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.0/xcsh-darwin-x64.zip"
      sha256 "fab692cd901cb057cd34c0e64796cb7240f67fc05c70ff67c140b03093fea227"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.0/xcsh-darwin-arm64.zip"
      sha256 "78a167e176e3dcb9d0eb11b73c568723273bd7999ec4daf05102bc264ede0929"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.0/xcsh-linux-x64.tar.gz"
      sha256 "ec316946714fff6fbbbc1acd994c6549e773d23e1844bafd5547d95f5a9f1b53"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.32.0/xcsh-linux-arm64.tar.gz"
      sha256 "766569ce45ccafc6f34b1a4d09278d9126cdb74c7e087cea2fbdb125ce0b8557"

      def install
        bin.install "xcsh"
      end
    end
  end
end
