# typed: false
# frozen_string_literal: true

class Opencode < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/opencode"
  version "1.3.11-f5xc.2"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.2/opencode-darwin-x64.zip"
      sha256 "4598860e28a7458cb0c72d45b833b87d0859928f29667d32ee94a947bcd621ff"

      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.2/opencode-darwin-arm64.zip"
      sha256 "cf61a941a4d9e5fc6f31293c9a568c8a8628f536b43bb12ec8fe0ffd8d64d3aa"

      def install
        bin.install "opencode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.2/opencode-linux-x64.tar.gz"
      sha256 "2b58c995f5498b605d5a09481d37dcd070d4451f6157772a33b9c205f34e0553"
      def install
        bin.install "opencode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/opencode/releases/download/v1.3.11-f5xc.2/opencode-linux-arm64.tar.gz"
      sha256 "e18ff14d4bc5056463e20ad238cddf2e8dcb3e5643aec274307d1c55fb1cd43b"
      def install
        bin.install "opencode"
      end
    end
  end
end
