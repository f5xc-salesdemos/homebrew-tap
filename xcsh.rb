# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.5.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.5.0/xcsh-darwin-x64.zip"
      sha256 "d911ff94f8fb788662fc9935dbff876f1291b6c42b87ff05e0d6ef7fc21dacd0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.5.0/xcsh-darwin-arm64.zip"
      sha256 "33b3c1d376d61fd8143781f74c235a03def18c1623ace6a8067f02c695a822e9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.5.0/xcsh-linux-x64.tar.gz"
      sha256 "5cf1798d25e0893469e466339a6e2c8dc344e70d000a1bfad91ac2ea9433f853"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.5.0/xcsh-linux-arm64.tar.gz"
      sha256 "af3b980e8e5a0208dd467eca3f4a58179548694ee47c061402175d89f5cd6295"

      def install
        bin.install "xcsh"
      end
    end
  end
end
