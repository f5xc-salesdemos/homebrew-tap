# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "17.1.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.3/xcsh-darwin-x64.zip"
      sha256 "a675c192f2d902934c762ad0910c5780791549f4d08e6543c1daf7a06c3bdc19"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.3/xcsh-darwin-arm64.zip"
      sha256 "2e818651db0f4f37fe875b4941ccc1b59b5e61cb22154ce2d5b9e2732b919334"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.3/xcsh-linux-x64.tar.gz"
      sha256 "46d40c4dd9aa0433846631c34395ff26b14451fa935228b2835088debd7e5243"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v17.1.3/xcsh-linux-arm64.tar.gz"
      sha256 "953c8ef1a1ad1bf0aaa0bb187dd0da952322d5d19326517a4d631ebe78e665d5"

      def install
        bin.install "xcsh"
      end
    end
  end
end
