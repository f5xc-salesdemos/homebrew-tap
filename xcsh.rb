# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.29.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.3/xcsh-darwin-x64.zip"
      sha256 "e2c7fa0a4b2db863b695b5635214efd4cd20d50f0a8d6e7f799340dff364fae4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.3/xcsh-darwin-arm64.zip"
      sha256 "5113637772001a8f8d902966616050cc5e2ce8495f7d07b21a2cd18f0bac8ece"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.3/xcsh-linux-x64.tar.gz"
      sha256 "a391f7d38bb33179822fe72826b3b6c65f7a6550e76c7a0ec726df7174bd8011"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.29.3/xcsh-linux-arm64.tar.gz"
      sha256 "10d880cdf6265b36e000f2e9e1d0c78e42a7ddb13874268cc61885540aa74d1c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
