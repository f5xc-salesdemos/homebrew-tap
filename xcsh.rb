# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.33.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.2/xcsh-darwin-x64.zip"
      sha256 "0efac3c766bab9fef26b84a3f1547a458ed4b864f622a4ddd7e0cb29fc57ab0e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.2/xcsh-darwin-arm64.zip"
      sha256 "dd45dca0b981011cfeb7e961b9c1aa8d8e6b5d9c48f3cd728cd03567165df4d9"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.2/xcsh-linux-x64.tar.gz"
      sha256 "d8e25000c70c5461d087b4a6b483b358b6ff22db947f8fd824d03abd95a291c2"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.33.2/xcsh-linux-arm64.tar.gz"
      sha256 "13734b2c83c37cade8420df2d3214e0084d4074e27ab4f838e56e26a5c232b26"

      def install
        bin.install "xcsh"
      end
    end
  end
end
