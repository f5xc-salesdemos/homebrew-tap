# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.19.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.2/xcsh-darwin-x64.zip"
      sha256 "3c372c9ee43b6632160b60eb39aec439eff605b6561f8c559ba7661b6586a731"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.2/xcsh-darwin-arm64.zip"
      sha256 "9e17a31e7cb7b980c9aa323bf52a60d71089c1833ec8c569fb36754100914d28"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.2/xcsh-linux-x64.tar.gz"
      sha256 "183e63886901699e839173f3de2a8565063f528e92fe946b68cc04b8084ce720"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.19.2/xcsh-linux-arm64.tar.gz"
      sha256 "bf1adf405f0310cfd80226c83f118a7bfc16a2614e2308f1d6dc4766b90ee17c"

      def install
        bin.install "xcsh"
      end
    end
  end
end
