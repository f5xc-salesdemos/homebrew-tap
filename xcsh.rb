# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.1.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.1.0/xcsh-darwin-x64.zip"
      sha256 "7289b7ea03729405f32356bc82af23aa8e0c4e0bbf7a9cbb7572db47a3f65ed8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.1.0/xcsh-darwin-arm64.zip"
      sha256 "68cb811032c4ea2a90f78c96101a42c6ffd9a709fb8d08357cedef21e3cef7cd"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.1.0/xcsh-linux-x64.tar.gz"
      sha256 "fdb6e592ef2850e3610f14bc45df46bd135aae27bacbdc0e3aa5860632312d38"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.1.0/xcsh-linux-arm64.tar.gz"
      sha256 "1cd9ad61f4c8d5bcf59d92135f44a82551f05943c970a892d894dd620d2bfb60"

      def install
        bin.install "xcsh"
      end
    end
  end
end
