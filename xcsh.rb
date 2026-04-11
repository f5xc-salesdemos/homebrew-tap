# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.3.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.2/xcsh-darwin-x64.zip"
      sha256 "d42faedc1ab923e6cd87a19fb6cf56de3a18c7a7ca0d7272a95f541cda3eb0f0"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.2/xcsh-darwin-arm64.zip"
      sha256 "d880523cada448674edbe64dee18a78ba6c37a4ddae7a52b346197f237a01793"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.2/xcsh-linux-x64.tar.gz"
      sha256 "78553eaef14021743a3d5c499770cc2ce43a29d28b31f213571c8379973ede2c"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.3.2/xcsh-linux-arm64.tar.gz"
      sha256 "57a89f88ddd877f6ced4acd9cefca8a11e05b235f2ba3c0714f4835c29c34ae2"

      def install
        bin.install "xcsh"
      end
    end
  end
end
