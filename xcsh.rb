# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.12.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.1/xcsh-darwin-x64.zip"
      sha256 "4732813c46fa26db7278f335115bcaf5613e1d6c41ff6e963bac37e7339123d4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.1/xcsh-darwin-arm64.zip"
      sha256 "1c5d20cb2b930debb4be7db6363ed02d9d22551fcf9155bde4feb7510f36fbda"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.1/xcsh-linux-x64.tar.gz"
      sha256 "7bbe9f8425eb2a68afc374df39abbd49aaf4bcc8319f67762d36d64fc21be74c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.12.1/xcsh-linux-arm64.tar.gz"
      sha256 "a6b7872d15cb42350303330e1f922b5374c8e07a7acec1ed560f2d81ff132982"

      def install
        bin.install "xcsh"
      end
    end
  end
end
