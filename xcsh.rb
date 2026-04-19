# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.5.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.1/xcsh-darwin-x64.zip"
      sha256 "4a402229513e856ad59a6c7fcd82378224d59e31dcad14b7ecf1e24106668ce2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.1/xcsh-darwin-arm64.zip"
      sha256 "23f8d5547538dc2a49e94cf6e272073c8a07950d7e7827b4f2b9dd6eabe4e8d2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.1/xcsh-linux-x64.tar.gz"
      sha256 "c61407411fd27dd4938eaae35191cbbc5690caa01402ef31934573a7500903b2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.5.1/xcsh-linux-arm64.tar.gz"
      sha256 "3e5d18226fde79abe9b0959729a66664a075bc37a5b019d77d81926498612af7"

      def install
        bin.install "xcsh"
      end
    end
  end
end
