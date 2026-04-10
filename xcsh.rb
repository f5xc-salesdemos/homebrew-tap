# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.0.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.0.0/xcsh-darwin-x64.zip"
      sha256 "2eb3b600773191a2752ed346719e640b2c18628dbf8dd39297e7cf80a45b1714"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.0.0/xcsh-darwin-arm64.zip"
      sha256 "f27e796349ea5ede13ef0ba565432037ea6f9b2ccaf6fb6983f70cbc3f7c9f19"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.0.0/xcsh-linux-x64.tar.gz"
      sha256 "c24f93bb8af995c87143846ab83c8fcef8cae1c9d47a01e1b735f94990d1ed85"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.0.0/xcsh-linux-arm64.tar.gz"
      sha256 "f3ba5b9633cc6d35c84678cfaac61bdbf6901cef31364027ac0b2c979b17006f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
