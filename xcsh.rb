# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.33.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.33.0/xcsh-darwin-x64.zip"
      sha256 "912da699586cc2a89bf32d1f5e7f0ad146d7dd9d95f6db2c1cb08f784c14c1b5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.33.0/xcsh-darwin-arm64.zip"
      sha256 "bc4c1495aaa771ba03cc695fdc6b6d2a19497e70c5326ee0e33feee028a24c49"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.33.0/xcsh-linux-x64.tar.gz"
      sha256 "4db8954a877267ad70004ebfea884fcbe84405a42128c3e254bafa092c980cb8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.33.0/xcsh-linux-arm64.tar.gz"
      sha256 "25a901907444bd45eae8ae65d8d6222225539d514590bd691c344882fe2c18eb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
