# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.13-f5xc.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.5/opencode-darwin-x64.zip"
      sha256 "dbb6de6956f33e9ceb0e94af11eb377b24070c58662d53f2f1dad91b3681c2d4"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.5/opencode-darwin-arm64.zip"
      sha256 "b822968c8f6d9df6e02775c1f06544366793fbf7acfaa91ae4a215d6e9683c7a"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.5/opencode-linux-x64.tar.gz"
      sha256 "075bce109a4c4693bf80322a1ccb3fa414c7afca96e2c2fdb8d6794b5a17a770"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.13-f5xc.5/opencode-linux-arm64.tar.gz"
      sha256 "4ba9f824a818a887427914f11d428e89a8c40ec3aa15d25348cd1ef0be537318"
      def install
        bin.install "opencode"
      end
    end
  end
end
