# typed: false
# frozen_string_literal: true

class Xcsh < Formula
  desc "AI coding agent for the terminal (f5xc fork with LiteLLM fixes)"
  homepage "https://github.com/f5xc-salesdemos/xcsh"
  version "1.3.13-f5xc.15"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-darwin-x64.zip"
      sha256 "25e41247cd63a2b15887b146050e6de9ca0134825316bf359ebf59ad27ce2e9f"

      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-darwin-arm64.zip"
      sha256 "b7edbfb6295caf26da9e6f8dae3d557146fd7d5c8e8755b0f3f068f358751fee"

      def install
        bin.install "xcsh"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-linux-x64.tar.gz"
      sha256 "94bb29277b7fc14f8ed8a8ffc3fddb770ce51ff907cd2a390304dbf974c13ba3"
      def install
        bin.install "xcsh"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/f5xc-salesdemos/xcsh/releases/download/v1.3.13-f5xc.15/xcsh-linux-arm64.tar.gz"
      sha256 "489f3bb809cdf59af8180affa2b1e6b6880703363088bddb5026fb5b4d991e52"
      def install
        bin.install "xcsh"
      end
    end
  end
end
