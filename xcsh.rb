# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "18.57.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.57.0/xcsh-darwin-x64.zip"
      sha256 "dd55587520ee8741a3ff9a42ca28c64f94b86a2180b1a689c4557773cf782b7b"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.57.0/xcsh-darwin-arm64.zip"
      sha256 "ace20b5d290db45d552c5e66b7b08061943985783616b061aae5fa81e780b5eb"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.57.0/xcsh-linux-x64.tar.gz"
      sha256 "429fce307ee65d17cca8b33484b6ac554021606a204712d704010ba602908332"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v18.57.0/xcsh-linux-arm64.tar.gz"
      sha256 "985240184dcd4793cd285042d8be7bfc05e74e83f22ee33b0c467393e08a0f50"

      def install
        bin.install "xcsh"
      end
    end
  end
end
