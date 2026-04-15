# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.17.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.17.0/xcsh-darwin-x64.zip"
      sha256 "d79541cb1111f950a00c694a4a5029cc7dbf09bbabd30a050048e0bfb493b87a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.17.0/xcsh-darwin-arm64.zip"
      sha256 "cbf34cbafbfe0091f1f82cbfc9a43b32a032ceae9e2bd02e3471fb739d55a312"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.17.0/xcsh-linux-x64.tar.gz"
      sha256 "d747000273605143fb4ba66fe52e16183a12940457d3284e44f3129ba44f2411"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.17.0/xcsh-linux-arm64.tar.gz"
      sha256 "7eb71b3235e5125ec29bd084bbbea54eea0a4ca39b0d94f834cee9fb59ed3659"

      def install
        bin.install "xcsh"
      end
    end
  end
end
