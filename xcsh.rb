# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.4.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.3/xcsh-darwin-x64.zip"
      sha256 "a62854fc46116c527443e1f6f672106a0c1add156004406895f700f1370b4263"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.3/xcsh-darwin-arm64.zip"
      sha256 "33faf0931451253a643e94eff082086de73b019cd660178eab2863204e9da28b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.3/xcsh-linux-x64.tar.gz"
      sha256 "a9ffebf4ce2c3e15ec6b0e5313649435ed583cd732a521f7e48cac5a9ecf0cad"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.4.3/xcsh-linux-arm64.tar.gz"
      sha256 "e9ecb7e4d551883013647f5b9dbed58a2a061063dccabcbca14d90ab850b2680"

      def install
        bin.install "xcsh"
      end
    end
  end
end
