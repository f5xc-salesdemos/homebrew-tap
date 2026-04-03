# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.9"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.9/xcsh-darwin-x64.zip"
      sha256 "78c076ea4ad275987e423060cd5fcb58440ed340b7a7c855ae745857deda0988"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.9/xcsh-darwin-arm64.zip"
      sha256 "b5cde7bf4388c8a457f3bd9c96075393f58c38c3a5b2713a3bf4c2d43d8a700c"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.9/xcsh-linux-x64.tar.gz"
      sha256 "5fac98572d5af997b2d1df28fb5abaf55dd9906fcd0605802014d4c23d70610d"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.9/xcsh-linux-arm64.tar.gz"
      sha256 "51072bb773e5fda1e13c2437361459211bbdb5dbd5327c9c646b39996d2606f4"
      def install
        bin.install "xcsh"
      end
    end
  end
end
