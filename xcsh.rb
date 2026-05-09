# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.52.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.52.0/xcsh-darwin-x64.zip"
      sha256 "32e45856f7e8c2f47adc1cdd973a5ac5081dd0cd57b67388a2b009e71abcb067"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.52.0/xcsh-darwin-arm64.zip"
      sha256 "68268da7893d796e8a17c9d3e35bedab1336a6a5e6f9f8a23f75b3ba96564462"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.52.0/xcsh-linux-x64.tar.gz"
      sha256 "106081ac098244ca4dc26addc33c6383c19b10d816e2fc363fd364607967806f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.52.0/xcsh-linux-arm64.tar.gz"
      sha256 "f8dc7ee38fe8ade2f486489373a1686354f38e1914773517b4176dc11bfc76b7"

      def install
        bin.install "xcsh"
      end
    end
  end
end
