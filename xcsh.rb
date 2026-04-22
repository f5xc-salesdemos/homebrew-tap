# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.10.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.0/xcsh-darwin-x64.zip"
      sha256 "2c0f8a9d60a4bf269aac4b70a6c41940caaf16742ffc31be077147fe0ccddfd6"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.0/xcsh-darwin-arm64.zip"
      sha256 "b50203119e5a2599dbc2d1dc656dbf318f2c719ca5a7f44a45c145b752a121f8"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.0/xcsh-linux-x64.tar.gz"
      sha256 "fe1e57ede5e05c50c931f9d9e56f919c34ac807a1393a7f25dd72fa3fb2d0010"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.10.0/xcsh-linux-arm64.tar.gz"
      sha256 "2ed29f91f56ed77ad8afcab8e9ae535152933e115ad4315cbda93fa119cc5603"

      def install
        bin.install "xcsh"
      end
    end
  end
end
