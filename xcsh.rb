# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.8.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.8.0/xcsh-darwin-x64.zip"
      sha256 "b678f0e1ddaa698c3921320053778b486c295747c80731d6c2a6e345410d39fe"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.8.0/xcsh-darwin-arm64.zip"
      sha256 "f277fea59f6b43626ae88502b21e4c93e3d5f763c9c7efc0074e6b0d75ac75eb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.8.0/xcsh-linux-x64.tar.gz"
      sha256 "4f18d8fdac9ff4a2bb9ab97f6e6a056836a9777d55e1b87ad6715e54eaa7b49f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.8.0/xcsh-linux-arm64.tar.gz"
      sha256 "08dc63fd354fc6e67956ecd9f1acd3ac71aefac12af7bcb097e8edff5932f464"

      def install
        bin.install "xcsh"
      end
    end
  end
end
