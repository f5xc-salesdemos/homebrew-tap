# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "15.16.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.0/xcsh-darwin-x64.zip"
      sha256 "29e7397f4dc381769f3f60c427f7eb604ae5614cf54c1772ad86cc6c9ad36c9f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.0/xcsh-darwin-arm64.zip"
      sha256 "3ebf3a785c6a55cbb550e180419b68f55ec77e042afed476d84008837d51ddde"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.0/xcsh-linux-x64.tar.gz"
      sha256 "111de25562d428908e1ae8f102725567ed0a62d0e1006bf1e50c2617b23a4c15"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v15.16.0/xcsh-linux-arm64.tar.gz"
      sha256 "d0254025d9ca383ce050cd0add068e4cc6af338edb67444a4cf330f7a4663d0e"

      def install
        bin.install "xcsh"
      end
    end
  end
end
