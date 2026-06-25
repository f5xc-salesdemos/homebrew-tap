# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.46.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.46.0/xcsh-darwin-x64.zip"
      sha256 "79db5546e65dd74db78e254c0a537cba74a209bc4321794a29d669b7a40e6740"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.46.0/xcsh-darwin-arm64.zip"
      sha256 "a66ded0029bd858787f977b5ca2d2d9df10020077b7826314da0347a60a042b6"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.46.0/xcsh-linux-x64.tar.gz"
      sha256 "a08c2d15b84e368eac0caf0043bc06144b3b08f6b37033f9d263ad34b691d41d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.46.0/xcsh-linux-arm64.tar.gz"
      sha256 "833876b918d2633cc9fcdbecd47e16a5251f387baf4c6a964a2352c04766903c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
