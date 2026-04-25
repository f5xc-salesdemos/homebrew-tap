# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.18.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.3/xcsh-darwin-x64.zip"
      sha256 "62f844cd279f9960a751d34bb1b63f8b6e7fa8e8e657ed6ebc6dc085f4c9a52d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.3/xcsh-darwin-arm64.zip"
      sha256 "8d83ed429cec9823db357decff395a6f0e89b8d2f1937f1f8854607017e876e8"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.3/xcsh-linux-x64.tar.gz"
      sha256 "4d9f0590c9b10fcd64834742157ffaa32bf90bd16530477cc98749bfbbf7497b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.18.3/xcsh-linux-arm64.tar.gz"
      sha256 "10aa2e8af9316bee8a42fba9e7166d2fdb5f1504964c6a8352fb21fb7049086d"

      def install
        bin.install "xcsh"
      end
    end
  end
end
