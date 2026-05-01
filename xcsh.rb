# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.30.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.0/xcsh-darwin-x64.zip"
      sha256 "64b7aacdfaa2fe9b003cac8cb32395553cf26339c5183487bbc880093943c917"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.0/xcsh-darwin-arm64.zip"
      sha256 "3499bd87acd49670edb53cfb59b83c7ec39229ce1d40efd333c8344a523942c4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.0/xcsh-linux-x64.tar.gz"
      sha256 "a6b64f1aa072238dc34859203af83df784cad2384cd0eb882b9285d14c6c513e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.30.0/xcsh-linux-arm64.tar.gz"
      sha256 "a841e6736207227947fd0ae1cea7c460ec73991cba03704110312bffc1b09cc2"

      def install
        bin.install "xcsh"
      end
    end
  end
end
