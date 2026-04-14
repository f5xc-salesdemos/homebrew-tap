# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.13.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.13.0/xcsh-darwin-x64.zip"
      sha256 "55a7bb05343980c657644f9ab64ad6df1ce8334b840323d5e07167215fd8fb11"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.13.0/xcsh-darwin-arm64.zip"
      sha256 "c25c78e1bd7da0ee59338f28996685b0d5b137912085e1208f48b2bef1ac0fc8"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.13.0/xcsh-linux-x64.tar.gz"
      sha256 "437c5a6bcd3851ff0ea8181407dfd2b9a70b44b908b4e9ba09234f8e0bb700f5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.13.0/xcsh-linux-arm64.tar.gz"
      sha256 "57b8d1ffcb1e95e42f2ba9072bc9d9a17b358a93521fc120e82869dde10bbcb4"

      def install
        bin.install "xcsh"
      end
    end
  end
end
