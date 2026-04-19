# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.4.4"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.4/xcsh-darwin-x64.zip"
      sha256 "50d409884f22cf567be97fc09181ec0aa2c8e635400bb7ce9074cc40f976a264"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.4/xcsh-darwin-arm64.zip"
      sha256 "9ed1fb3d5edbfc6b405b31df844ab7b92fe8d97fb508e2712dc0a4a0b26fb691"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.4/xcsh-linux-x64.tar.gz"
      sha256 "6cab8f145fd1108b0e2365b77a551aa825a21f08567e12d3a46182f97c88127e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.4/xcsh-linux-arm64.tar.gz"
      sha256 "33ef0644727bfd968f9db1c1e2d39709b33583713630d32bd2656dff3983a0aa"

      def install
        bin.install "xcsh"
      end
    end
  end
end
