# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.10.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.10.0/xcsh-darwin-x64.zip"
      sha256 "28293bacc51a62ec4307195e562b2197110da7390168230052af43b71f35e4b4"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.10.0/xcsh-darwin-arm64.zip"
      sha256 "068990053f52b0923be405d95b9418cf27c7dd0cee612bfb813b057de4ebdbfc"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.10.0/xcsh-linux-x64.tar.gz"
      sha256 "589f4e84f440d3cc9bd2766bf5c3032be596015d14fb976b95ee38f506df7776"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.10.0/xcsh-linux-arm64.tar.gz"
      sha256 "fc33ce6c971e29063415b0416582d2bd6955278d23877f2b1c65aa81cda9a4db"

      def install
        bin.install "xcsh"
      end
    end
  end
end
