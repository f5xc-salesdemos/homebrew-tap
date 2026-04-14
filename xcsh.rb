# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.14.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.14.0/xcsh-darwin-x64.zip"
      sha256 "a9060bfcbe48513022585c310d9a5cc73ab6c471f64708204ff9cb92eec3b80e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.14.0/xcsh-darwin-arm64.zip"
      sha256 "97f5f512eca9f02135c2f05c15de5661c9fd34ea96e0afe3a587de94b7d09d70"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.14.0/xcsh-linux-x64.tar.gz"
      sha256 "6142f95f98f9361bf6e336f8a1dffc691359243f5053270be474d0aeb469816c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.14.0/xcsh-linux-arm64.tar.gz"
      sha256 "f0aa6a4c221169a0d060d317e8d272ddc0a5504e52d076efcd1f648096f3ce6b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
