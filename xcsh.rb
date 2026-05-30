# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.87.3"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.3/xcsh-darwin-x64.zip"
      sha256 "b3db2ee81ba5d262481e254628fee7397011d1219126283db497be7956863c61"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.3/xcsh-darwin-arm64.zip"
      sha256 "0f98e2d35ae7bc42369dffe0a995103be3aa4095cc5b3994f693f2c95ef12784"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.3/xcsh-linux-x64.tar.gz"
      sha256 "e597189dce400a903ead81cfbb75e4936aa4fb4d47e929479a4e5f094cba1aca"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.87.3/xcsh-linux-arm64.tar.gz"
      sha256 "2e60fa310b3f1cd3380eb46a08dd3bb13c19bbe599e8712c70ce741fb14c875f"

      def install
        bin.install "xcsh"
      end
    end
  end
end
