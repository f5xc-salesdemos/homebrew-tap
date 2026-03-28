# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.3-f5xc.5"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.5/opencode-darwin-x64.zip"
      sha256 "df70320912342d45cbf7f6772c0467e96acad01b7d4ae55f627efde3d374d996"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.5/opencode-darwin-arm64.zip"
      sha256 "6bada410f647bc8dc4c412a4303bb088ea2a04fbce4773a2c5c63a532fc37eb4"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.5/opencode-linux-x64.tar.gz"
      sha256 "a3b6fd46c25bde34e60d4b7f4fa402a44e7257b25dddf7ccce23021664989eb1"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.3-f5xc.5/opencode-linux-arm64.tar.gz"
      sha256 "a7d2f38dedd36b0dbdb75b2d0c8e80c98a3527798a7c6529f707393f703bbb21"
      def install
        bin.install "opencode"
      end
    end
  end
end
