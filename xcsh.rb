# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.30.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.2/xcsh-darwin-x64.zip"
      sha256 "e107467b834f97ac2cca1c4368298c2faafab89369ba9018be5650132594d292"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.2/xcsh-darwin-arm64.zip"
      sha256 "52b3005d94527e08f644d8ed79bc82050ae80f20a5a741c2d20ae2377ea0f569"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.2/xcsh-linux-x64.tar.gz"
      sha256 "6448039a4d82b74ee1da01308f845dea26a47d719c4cf2c64a1b38cc79ad1384"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.30.2/xcsh-linux-arm64.tar.gz"
      sha256 "358c6be172181c10929d1eaddc271a918231feccb29ba9202431bc7c36773d0b"

      def install
        bin.install "xcsh"
      end
    end
  end
end
