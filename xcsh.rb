# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.18.7"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.7/xcsh-darwin-x64.zip"
      sha256 "ce5c1034af12b00bb1b7058d70800db5d8f365251795a3bd8b3b60082ac39b11"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.7/xcsh-darwin-arm64.zip"
      sha256 "b8f4ba034c81b983d1acee4a586062002af62162aa674f6fcdc338d70ca73dc4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.7/xcsh-linux-x64.tar.gz"
      sha256 "150dfd35d1c908333869e23afb71863320c46c2effd5e6fb6f25e1c350fc3592"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.7/xcsh-linux-arm64.tar.gz"
      sha256 "341ca8b20dd0472ebedc3966356e830fdeeffd8bc84cbb31d7bf5d608224056a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
