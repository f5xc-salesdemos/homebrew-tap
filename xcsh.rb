# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.7.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.7.0/xcsh-darwin-x64.zip"
      sha256 "56b64933b5a93c23b0573ab5f5534c24c72d98b35161cfe428fc876dc33a5255"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.7.0/xcsh-darwin-arm64.zip"
      sha256 "bff13412dd58075071c5c1569f1e1ece4bf549114fc3148064a4456f104b0985"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.7.0/xcsh-linux-x64.tar.gz"
      sha256 "39649700458b852f81f9e724c91f87d4e5ec0f18db114757aeb563c33c37254f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.7.0/xcsh-linux-arm64.tar.gz"
      sha256 "226fcebd292c6766f0c3409571955ea587393f9c3a23fc93993f9457df459151"

      def install
        bin.install "xcsh"
      end
    end
  end
end
