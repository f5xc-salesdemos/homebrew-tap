# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.29.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.29.0/xcsh-darwin-x64.zip"
      sha256 "9f80cbff8e2640cdf4b969ac9e464efa434b04b29ac468627fb410241144a81b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.29.0/xcsh-darwin-arm64.zip"
      sha256 "6b899d5902331f3786364a94d5c8e61e4952bb00434ae00a698743236e893b4a"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.29.0/xcsh-linux-x64.tar.gz"
      sha256 "f1da42f0342b6d1b1bda89cfb6c519138ed03b16d78f44eb0fb8e08a738f6034"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.29.0/xcsh-linux-arm64.tar.gz"
      sha256 "12088f7ef4b97d737721bc728f3e3704f6758765faf0744b63d4ecb8cb4bff2e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
