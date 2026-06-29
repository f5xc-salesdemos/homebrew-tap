# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5-sales-demo/xcsh"
  version "19.52.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.52.0/xcsh-darwin-x64.zip"
      sha256 "f60b1d2aa97fdc8f5f1870d2e402df5b44e25d8d0e1a6d4b2093a5b9f96d3e2e"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.52.0/xcsh-darwin-arm64.zip"
      sha256 "3fcbe908796699bf5f93fb79c8fa98bc6e4cd0328634cd9fae65875734008a1e"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.52.0/xcsh-linux-x64.tar.gz"
      sha256 "7f51bc407b56d7fdb628541c91f1db3abb4b927c2e0abc080bda3583ec55db78"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5-sales-demo/xcsh/releases/download/v19.52.0/xcsh-linux-arm64.tar.gz"
      sha256 "fa2cdeb8acd45c64fd13e1f0c1da89baf1025d866321a50b0a5d79e5d00fd4ac"

      def install
        bin.install "xcsh"
      end
    end
  end
end
