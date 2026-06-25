# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "19.44.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.2/xcsh-darwin-x64.zip"
      sha256 "b5aab559678513f15f3b731419063775282976166b687e763a58af432b043c86"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.2/xcsh-darwin-arm64.zip"
      sha256 "33cff4c7d2e238a460113b5885488a3e7e0788fd92765d8f5551d60377747a89"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.2/xcsh-linux-x64.tar.gz"
      sha256 "5e9ac17b38da93016eadb5909a14ef94ea9223d66225fd59f80531da7cff6f58"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v19.44.2/xcsh-linux-arm64.tar.gz"
      sha256 "462b581afe03dc95343cc70404965fd53cfba6ddb7d752b6403cbed7f3539b16"

      def install
        bin.install "xcsh"
      end
    end
  end
end
