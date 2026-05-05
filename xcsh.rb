# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.41.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.0/xcsh-darwin-x64.zip"
      sha256 "5c6bbf11b8a7c3841752fc7c97cfac28cadd01b51c6b76b3f74c364603d544c3"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.0/xcsh-darwin-arm64.zip"
      sha256 "b8761454d5c712c957cc57a6068b15071be72316e4dcf52b3f0733a44c533b6c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.0/xcsh-linux-x64.tar.gz"
      sha256 "a6787b11c6844491e00004c25dbc927879ef45d81cca48d5ad54c13af824d6f2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.41.0/xcsh-linux-arm64.tar.gz"
      sha256 "d510528e97eae1682bc4af7ebdee00ad2f9cf4d3046c996695a7f44901e77ac0"

      def install
        bin.install "xcsh"
      end
    end
  end
end
