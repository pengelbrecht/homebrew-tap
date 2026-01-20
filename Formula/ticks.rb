# typed: false
# frozen_string_literal: true

class Ticks < Formula
  desc "Multiplayer-first issue tracker for AI coding agents"
  homepage "https://github.com/pengelbrecht/ticks"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_arm64.tar.gz"
      sha256 "4b4ac570ae2961e26cc43fd6d03c8871f99e726b28313cf9918bd6aef0e708ce"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_amd64.tar.gz"
      sha256 "25f42c7eafaa3eb0c194b37eab96b382f8e0b9cd89f924c48f83814b6dd10d18"

      def install
        bin.install "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_arm64.tar.gz"
      sha256 "0f5332dc1abe096242ebe8db9803f54cf5d9a88e1a71a3b9e6aa7dde22fdb1ab"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_amd64.tar.gz"
      sha256 "c39febc0596510bb3c3c27349520501005726cbaa4033f9dc59b0ce1466ddbec"

      def install
        bin.install "tk"
      end
    end
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk version")
  end
end
