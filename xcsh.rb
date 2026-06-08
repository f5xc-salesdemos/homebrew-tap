# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.18.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.0/xcsh-darwin-x64.zip"
      sha256 "ac9a77cb7864d995916b29a47fe9ca4026491e82de25d7e944000afd392424f8"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.0/xcsh-darwin-arm64.zip"
      sha256 "705aa0206dbf7298af3e4092331b43768f368423046899bf0d5d1c494aa48609"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.0/xcsh-linux-x64.tar.gz"
      sha256 "32868c602c8314cd482af30efb1c4fc0456656b9f667828bd6e0deb13797c225"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.0/xcsh-linux-arm64.tar.gz"
      sha256 "78b5701972ca6c6da84e4ca86b3fedec598b9290a45765c808879e697fb5e140"

      def install
        bin.install "xcsh"
      end
    end
  end
end
