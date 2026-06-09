# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.19.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.3/xcsh-darwin-x64.zip"
      sha256 "5e1007b4028d8733545f7aaf804d92f1e79aee4e9961550563ccdcb7522ea3b7"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.3/xcsh-darwin-arm64.zip"
      sha256 "ac6c6b6f10c4786baec682319a6cab0d48a91dc441e3b8a41cf86f55c4a86511"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.3/xcsh-linux-x64.tar.gz"
      sha256 "08bf7dd9fbb18d9d5df34eb64abbd865331854a731119e5f804096ebd4616cc5"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.19.3/xcsh-linux-arm64.tar.gz"
      sha256 "25eed8bfc6dc8f532843c0f6dd29779472ef3499d48b4b53bf8103e050f964c5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
