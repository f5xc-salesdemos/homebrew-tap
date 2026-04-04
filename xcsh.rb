# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.18"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-darwin-x64.zip"
      sha256 "a5421eac03e25b5b3ec93a59afe1035d40d40f1ff05c4277f430984ea75ff3b4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-darwin-arm64.zip"
      sha256 "0f1f752d8521fd4fb80d7484ab6a44bf2ff965c17de7f872f4784b45f069565b"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-linux-x64.tar.gz"
      sha256 "9e1293f9b2f37ac75f339a2977d51d51c6d5e98522ba2beb9f81b2e2f8b49bb1"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-linux-arm64.tar.gz"
      sha256 "4e853f63e2f50c14eee7cbd3908d686964389ffc299d72dc003f970a4429c295"
      def install
        bin.install "xcsh"
      end
    end
  end
end
