# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.87.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.2/xcsh-darwin-x64.zip"
      sha256 "c238c8dbc5f765a86f937f23e5ae99595e6266e7bfafe5c9c8301288e4d8d856"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.2/xcsh-darwin-arm64.zip"
      sha256 "398c24147a14b61c037d1ae97fe2d532a37743ab46552ee2e22f6716e89495b2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.2/xcsh-linux-x64.tar.gz"
      sha256 "a489d250ce1bf99e47a21b9bd15afd4f6e1087cc0234900f738bbdd61e85d363"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.2/xcsh-linux-arm64.tar.gz"
      sha256 "654f852ad09e7cbcefc44d0e324ff25a121435bc72070dacf05e61779b889606"

      def install
        bin.install "xcsh"
      end
    end
  end
end
