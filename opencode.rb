# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.9-f5xc.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.3/opencode-darwin-x64.zip"
      sha256 "d8364176e510a21c7a8347f15fb03b6ab56e7504c57ccc57c2686a15dbed3a25"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.3/opencode-darwin-arm64.zip"
      sha256 "79804d6f8e0bb6f4e641012814875554c53a50309778e8ae077a2ad6e505ed3a"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.3/opencode-linux-x64.tar.gz"
      sha256 "a90095b2703af9a432505ea949931b87bd90a7436108bb84915cea2da660b173"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.9-f5xc.3/opencode-linux-arm64.tar.gz"
      sha256 "ebdcb8b1d3a70948f67b20a63aea4444def53e7d3f215daa21c608d18cd07bf7"
      def install
        bin.install "opencode"
      end
    end
  end
end
