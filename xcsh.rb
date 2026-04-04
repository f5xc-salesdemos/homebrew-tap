# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.15"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-darwin-x64.zip"
      sha256 "1546ec1915c96f11322fd3138298cbc1c859474386b4e7fca7d14f9a71d8aeeb"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-darwin-arm64.zip"
      sha256 "63439eee2d21305eec14b3035bac8e3f3cbb51fd9f12a2f1bcfa7f65af71c0b4"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-linux-x64.tar.gz"
      sha256 "528cf7343aa1e519195763d6b1325976a811d723f5aff3f7cfa0b957433e9b0f"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-linux-arm64.tar.gz"
      sha256 "eaf815adde8ce69301d25f741d8340e1c47e01bf9498dbf5c78dcf55421ffe97"
      def install
        bin.install "xcsh"
      end
    end
  end
end
