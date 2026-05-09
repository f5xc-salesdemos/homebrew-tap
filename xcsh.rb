# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.53.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.1/xcsh-darwin-x64.zip"
      sha256 "6ce42209d7cb87521a56cf2f3883762f6008f11f9443ca179768ab2bc462a3f6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.1/xcsh-darwin-arm64.zip"
      sha256 "fde7285d5e4154f790578dfea5bc5536f3f320d3aab893660786e506276276d0"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.1/xcsh-linux-x64.tar.gz"
      sha256 "9d2bfc67cd71e782bcbdbb1996e26fc9469b35f2f61ffb58d5e1c374dbc98f9a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.53.1/xcsh-linux-arm64.tar.gz"
      sha256 "aec968793d4434a6b0ec1277c2dcb60eceb39c4c5cbf9c6f6f3909b1f297f95e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
