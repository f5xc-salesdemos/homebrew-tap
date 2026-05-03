# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.33.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.3/xcsh-darwin-x64.zip"
      sha256 "b8745f7c814edbb5f2a0c355e31572336e079eb752710c2f32e518a9cc69676d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.3/xcsh-darwin-arm64.zip"
      sha256 "47079654b557e598ec3c67608e36dc128dae7db20628cff4dcff910d2b2de0b6"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.3/xcsh-linux-x64.tar.gz"
      sha256 "ef438f53f78971cc5375f377ffd9eb6ca5d777908df6cf4b87ffc98d2d08753e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.3/xcsh-linux-arm64.tar.gz"
      sha256 "57796e4721dab5574ded4276ca107ee81ec579fba19f83964981ccaf9ef40184"

      def install
        bin.install "xcsh"
      end
    end
  end
end
