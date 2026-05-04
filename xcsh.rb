# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.37.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.1/xcsh-darwin-x64.zip"
      sha256 "9521874cfd88686246f5498bd80079feed894b4ceb5b3a6858c02c74d9e53fb4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.1/xcsh-darwin-arm64.zip"
      sha256 "426c0858ec708b59a1f479ff34b10545174c9694833a59f980516bff32a03f73"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.1/xcsh-linux-x64.tar.gz"
      sha256 "ae59823279cb7aedcad5eb32e7404ca49b465d53d6748530f9f9bdbe2185158d"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.37.1/xcsh-linux-arm64.tar.gz"
      sha256 "078ec1ec029bd93262773200db3f1edb793c3852e5642bb46e1ffdea69c282d6"

      def install
        bin.install "xcsh"
      end
    end
  end
end
