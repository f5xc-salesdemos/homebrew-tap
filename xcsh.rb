# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.18.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.1/xcsh-darwin-x64.zip"
      sha256 "0c6858ddd918f723bfff940766e7a27ceaa41bbcf7694adbbff06206ca46bedd"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.1/xcsh-darwin-arm64.zip"
      sha256 "b5b5a85142c45c02856da373f4b19f28b7391f846f8dd09c24f5a95f239818a8"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.1/xcsh-linux-x64.tar.gz"
      sha256 "aa690a4bf4b324b039c80498ed2ceb4804cc3b5fac65e1f31203fd25dcaccf8c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.18.1/xcsh-linux-arm64.tar.gz"
      sha256 "7aab4c320d7ad1593d3057c32f487bab8247a52b7ee90384c54a543156d4947e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
