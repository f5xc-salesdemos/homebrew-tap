# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.14.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.14.0/xcsh-darwin-x64.zip"
      sha256 "4ebe417620c494b699c98ffc102536b06e3fb56d0d9d9a79c04c3f035780a0d4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.14.0/xcsh-darwin-arm64.zip"
      sha256 "7611ef0c214bb04aad0c879272ccd1f31e2d16d0d46af0ce01c6cb98dbe9675d"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.14.0/xcsh-linux-x64.tar.gz"
      sha256 "a90b182d66dd9fb2faa82a7f492fe9177fb47ef63e1ff1c8e6351172b2e1cd8c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.14.0/xcsh-linux-arm64.tar.gz"
      sha256 "a46f880f913a9e59f16b774f17687373684394baaec7f9eb4be1bb0acb5b4efd"

      def install
        bin.install "xcsh"
      end
    end
  end
end
