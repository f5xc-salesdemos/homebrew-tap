# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.19.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.1/xcsh-darwin-x64.zip"
      sha256 "10fa3007c0df12fc156eb01bf740bdb48ec6a8ec230f3219339f860dfaeedd7c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.1/xcsh-darwin-arm64.zip"
      sha256 "3cb4e6e320a944e1918b601d48d4e60492500010233fb1a873a9ab6e6dcedfe4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.1/xcsh-linux-x64.tar.gz"
      sha256 "d868d68026f3c8c81515bba0096ade96db0f4faff0b3627cd958a74d65d99967"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.1/xcsh-linux-arm64.tar.gz"
      sha256 "ffe932575c4c4d8c0f5d4cda825b876c355d5b14c9200cebe985b891ce43a349"

      def install
        bin.install "xcsh"
      end
    end
  end
end
