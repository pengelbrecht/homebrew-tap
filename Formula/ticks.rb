# typed: false
# frozen_string_literal: true

class Ticks < Formula
  desc "Multiplayer-first issue tracker for AI coding agents"
  homepage "https://github.com/pengelbrecht/ticks"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_arm64.tar.gz"
      sha256 "15d5e9caff357308e7c30f0e8d586ac16f156b5e0a0c9aecc1061108c302ca88"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_amd64.tar.gz"
      sha256 "278a675b6fbaea06d4a7c7292b3cb52e08c4c541bdbae1c00ffb645c2e09f270"

      def install
        bin.install "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_arm64.tar.gz"
      sha256 "934b70c2f002462eed6f0e34b90525683f8515fddd9ae3759c7c0d0dccf0968f"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_amd64.tar.gz"
      sha256 "76d81310a0dcf5c880a629e7fde291dd2c18e6728bf0257f27c9712d8f1e07b8"

      def install
        bin.install "tk"
      end
    end
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk version")
  end
end
