# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.8.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.1/xcsh-darwin-x64.zip"
      sha256 "14a4151e717f81e97618dfdea9429259ab99a7a78c445467f94faaff57f5f365"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.1/xcsh-darwin-arm64.zip"
      sha256 "1ab5fa2f1c0945b39276a8ce6c277804d262ea1298169fb74dea3a5ea1a6f200"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.1/xcsh-linux-x64.tar.gz"
      sha256 "8ef77b031b453069fdc153ce44e82aef3a33b1a0e7486d52d519cdb9f6987271"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.8.1/xcsh-linux-arm64.tar.gz"
      sha256 "52c7d39c79b288c02bbd5cd790510b6029fdaa29c181e73f4d40f07f808ba510"

      def install
        bin.install "xcsh"
      end
    end
  end
end
