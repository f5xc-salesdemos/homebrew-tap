# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.77.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.4/xcsh-darwin-x64.zip"
      sha256 "a1128bf858f02472846a45b276180bcf0220c4fc5d78bea5ab5a590ceebc1f4c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.4/xcsh-darwin-arm64.zip"
      sha256 "577d03f7be5322b40cdc1d422b2815b450f8c5c4be52ee8f355c636c969c648c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.4/xcsh-linux-x64.tar.gz"
      sha256 "e708525a980a42992598fc22f164663cc068e84698541588fec779964288061e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.77.4/xcsh-linux-arm64.tar.gz"
      sha256 "95fa05101fe1301807c8f78d9ae395f3e2edbcc56b3166d68e0f9ba526a6c758"

      def install
        bin.install "xcsh"
      end
    end
  end
end
