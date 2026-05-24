# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.79.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.79.0/xcsh-darwin-x64.zip"
      sha256 "2f515a65d6d6ecfd72aee50c6ebb71feb1ab5d870045314781b3bc426a2caa66"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.79.0/xcsh-darwin-arm64.zip"
      sha256 "d49c2aca6528c70f1fcbb0e9b0ce5d5fc8863121a5b97811b855f4260432fa40"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.79.0/xcsh-linux-x64.tar.gz"
      sha256 "37b8a4937b180bd68e2f93ac4512f9a6a2085ceacb7276717fa7bb4cc3fe16b6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.79.0/xcsh-linux-arm64.tar.gz"
      sha256 "5fd71c665cd917650bfa4978de6f5e439bc7bf866af74ab7051a271d1c822b0e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
