# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.6-f5xc.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.3/opencode-darwin-x64.zip"
      sha256 "4d93415020706ce05cccbb8b9f60d279e469512fad5bd1d0c7604f20a7989335"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.3/opencode-darwin-arm64.zip"
      sha256 "3f10729b7d835a52ab6c56232e241415303cd4d052c75c30eaea4bea78893839"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.3/opencode-linux-x64.tar.gz"
      sha256 "49f93415c9ae085bae16887bf96832a4a6ed4e317124e19079abffcda5fc7189"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.6-f5xc.3/opencode-linux-arm64.tar.gz"
      sha256 "9841b671c76e289ef4fddb243c5a4e9f61fecb977eb2eaa78eb7153e72c86c0a"
      def install
        bin.install "opencode"
      end
    end
  end
end
