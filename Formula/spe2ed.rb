# typed: false
# frozen_string_literal: true

class Spe2ed < Formula
  desc "Fast E2E testing with natural language, powered by Claude and chromedp"
  homepage "https://github.com/pengelbrecht/spe2ed"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"

      def install
        bin.install "spe2ed"
      end
    else
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"

      def install
        bin.install "spe2ed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"

      def install
        bin.install "spe2ed"
      end
    else
      url "https://github.com/pengelbrecht/spe2ed/releases/download/v#{version}/spe2ed_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"

      def install
        bin.install "spe2ed"
      end
    end
  end

  test do
    assert_match "spe2ed", shell_output("#{bin}/spe2ed --version")
  end
end
