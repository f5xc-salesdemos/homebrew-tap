# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.19.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.1/xcsh-darwin-x64.zip"
      sha256 "da9f49f2af489d7ab1cb3fd5417730cbebef4098ff88d0bb8b2ff775ac12b01e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.1/xcsh-darwin-arm64.zip"
      sha256 "f44ec90427aa591aa804026b4782003faed3d48a2dbd352df0a39ff915c37809"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.1/xcsh-linux-x64.tar.gz"
      sha256 "eedb35798205ad7c5c326e83605c2bdc81e0de25b9bdf7f80d257de3c3da7303"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.1/xcsh-linux-arm64.tar.gz"
      sha256 "1ceec13db35d2d7d94985594ef5c1111ccc0dc43d29c6d85ea4a82e8bb858933"

      def install
        bin.install "xcsh"
      end
    end
  end
end
