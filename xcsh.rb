# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.58.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.0/xcsh-darwin-x64.zip"
      sha256 "999700d54e5c1ed469e81c34599f00946e6348719657cea0b2821fab3960dfc8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.0/xcsh-darwin-arm64.zip"
      sha256 "7f8b4715de6b42327bc5aee34910f10aec499b087cc31d390918e780edb77062"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.0/xcsh-linux-x64.tar.gz"
      sha256 "1192c45b8204fa4e241c2415791989714bf387a5bf23cd2f9ec1f05ae2514c17"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.58.0/xcsh-linux-arm64.tar.gz"
      sha256 "dd297c26a050fdc06ac8f451bf7e3aabb4fc981bc4f5dda7367179f9abaa31db"

      def install
        bin.install "xcsh"
      end
    end
  end
end
