# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.21.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.1/xcsh-darwin-x64.zip"
      sha256 "bd0664df5f4e58b9afbfd0a3ebbcb69df38a9c4f3050615ead67e5a577c1d3d1"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.1/xcsh-darwin-arm64.zip"
      sha256 "28d40e349f1fa9074b69b3108e8908cc1984f29a25465e6e3bbf597849feda91"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.1/xcsh-linux-x64.tar.gz"
      sha256 "e1c76c8dc2e4a94141d1c5c1ddcf36b739417ed61fda3f8daa0bc285419b667a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.21.1/xcsh-linux-arm64.tar.gz"
      sha256 "42415a655817c4ab4fb0f04c4df93e954957e4483d3759b8ca24379131bc6cdb"

      def install
        bin.install "xcsh"
      end
    end
  end
end
