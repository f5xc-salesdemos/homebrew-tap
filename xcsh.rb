# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.15.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.15.1/xcsh-darwin-x64.zip"
      sha256 "8ac6155ac513e55c1999606d5dfd69722bb906a28b28d059141dd7302fdcb358"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.15.1/xcsh-darwin-arm64.zip"
      sha256 "d022789b549528ef4bd63745ba1bf4f35a381deb7fe2291d709c577e041344e2"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.15.1/xcsh-linux-x64.tar.gz"
      sha256 "d755d29bebed54f0a50d31cb55da225da1466080781d190cf99a8bf8b3c1392a"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.15.1/xcsh-linux-arm64.tar.gz"
      sha256 "4c0a26e733be92baf3fedb1943039e4cc0964d00c84e4d68613001222040b4e3"

      def install
        bin.install "xcsh"
      end
    end
  end
end
