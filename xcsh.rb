# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.13"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-darwin-x64.zip"
      sha256 "c97e93fd68bfe86fb3a6448feb907db396cb5a147981c939a7f9e5f60fb0a6f0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-darwin-arm64.zip"
      sha256 "1fd67b689494ee7b7f9fceb9ed8470ab006b63be1b35fe86ec3c981c356b9bc2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-linux-x64.tar.gz"
      sha256 "c3c47ccb72f73d2fbd1c888ff743416cafd4fe83b3c1b6e4e29f6a749230d102"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.13/xcsh-linux-arm64.tar.gz"
      sha256 "227f17be34cbd1a17857e3d62466317c0295da612922f3d48a76466ac30815cb"
      def install
        bin.install "xcsh"
      end
    end
  end
end
