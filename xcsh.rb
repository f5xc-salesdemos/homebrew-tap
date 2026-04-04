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
      sha256 "64e648255889e0e9190f2eacb1142c8cd65709ce889e2663e49cb5c77d407f29"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-darwin-arm64.zip"
      sha256 "89f54879230f29e5f4562473d27677c4c5d551d0313cf517d5e94a4a907bf810"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-linux-x64.tar.gz"
      sha256 "c34e6a32a216e6c5cb539217d748155c3e41bf64e095e5fd60c4b44fced779ee"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.18/xcsh-linux-arm64.tar.gz"
      sha256 "40372f8161127c45cc95de0b2b6720c3f4fecdeed1af8bb494fe46706b919e78"
      def install
        bin.install "xcsh"
      end
    end
  end
end
