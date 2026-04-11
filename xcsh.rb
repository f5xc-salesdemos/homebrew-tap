# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.0/xcsh-darwin-x64.zip"
      sha256 "679cf536952b168ca3f4e8d0b793b28eef6e4e73f83a2693ab783b12bb30bb56"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.0/xcsh-darwin-arm64.zip"
      sha256 "54e3203d876fb64ca62b87c92981ca662d423866158c6f0ce05ab6cccdf4d680"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.0/xcsh-linux-x64.tar.gz"
      sha256 "9eda41c037b27e63260005eb81f722feb6f9972d6c548b4139b5c7bcc6d564eb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.0/xcsh-linux-arm64.tar.gz"
      sha256 "be7e7240d7046a4dab123217f8c2822b783de3122ef44263a62f31890933fb60"

      def install
        bin.install "xcsh"
      end
    end
  end
end
