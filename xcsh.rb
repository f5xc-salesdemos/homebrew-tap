# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.10"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.10/xcsh-darwin-x64.zip"
      sha256 "54ddcbc2f09845fef7e4b42e434c3e3bfe9aaf7e00a0d0aa83fb8dcba446e697"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.10/xcsh-darwin-arm64.zip"
      sha256 "5e0a62eb518020a5d754f2d7c7cee48d107d9808fe1b2358ce0fe0fcdab2f808"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.10/xcsh-linux-x64.tar.gz"
      sha256 "2f230d6f80044125080cc7d51c13a9b1e621925338f7c3e2cc9253187a48a1e1"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.10/xcsh-linux-arm64.tar.gz"
      sha256 "5d84d35a575a6dffe1255c02eaaf93e012d4af6f02af8dd6ea0afbe130d4c615"
      def install
        bin.install "xcsh"
      end
    end
  end
end
