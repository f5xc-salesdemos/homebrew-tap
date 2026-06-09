# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.20.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.2/xcsh-darwin-x64.zip"
      sha256 "7abac38cc147c8413665fd8858ec0ca10a1fa1ba92404bb520b4bb5409025bad"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.2/xcsh-darwin-arm64.zip"
      sha256 "59cbe79402d151291aaabb463af0d803063a4cf4373523b4227ec3160376b50b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.2/xcsh-linux-x64.tar.gz"
      sha256 "3fc972a6a46d776639a5e05ebeb4cb66a9a40f4ed2c1aee478d2dd450ee13266"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.20.2/xcsh-linux-arm64.tar.gz"
      sha256 "d534494b51dfb1511005eae5bbee854c9c7a2bb24c957c62fa53918d2f41fc51"

      def install
        bin.install "xcsh"
      end
    end
  end
end
