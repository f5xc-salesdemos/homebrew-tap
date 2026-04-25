# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.18.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.0/xcsh-darwin-x64.zip"
      sha256 "26b781546435c7c7031f24d7387ac21659ee55171efbe5822c3a4f66361bda8f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.0/xcsh-darwin-arm64.zip"
      sha256 "d411f1565758026c023482d6e931c60b63189123f3ac623266288c87f7afc331"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.0/xcsh-linux-x64.tar.gz"
      sha256 "d7e885386a9c01f282552d0f91b13188e13b136c3ea910b86205b67d34d4e085"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.0/xcsh-linux-arm64.tar.gz"
      sha256 "0186eec8b5572bbf3d0e56c3e96e5d080409be5565acd7b2d342c4fc86a7e08a"

      def install
        bin.install "xcsh"
      end
    end
  end
end
