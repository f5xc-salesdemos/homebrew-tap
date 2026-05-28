# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.85.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.0/xcsh-darwin-x64.zip"
      sha256 "c60c71d9fb950ae08f61b8208e86d97a000d1b62ca1b22c511387912031536e4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.0/xcsh-darwin-arm64.zip"
      sha256 "ef665ce29a070577067d9bee2ef68afa00416f814d900d555da8f89f036f66d7"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.0/xcsh-linux-x64.tar.gz"
      sha256 "5fb6858be3c15700a216fd5714f667490c512f738adc7efbd20e4a62a7c0c94d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.85.0/xcsh-linux-arm64.tar.gz"
      sha256 "3f8e48d89e297b56420f3b42a01c83725fe16e20e143818db74e3cfc342b1886"

      def install
        bin.install "xcsh"
      end
    end
  end
end
