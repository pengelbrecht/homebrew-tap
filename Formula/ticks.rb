# typed: false
# frozen_string_literal: true

class Ticks < Formula
  desc "Multiplayer-first issue tracker for AI coding agents"
  homepage "https://github.com/pengelbrecht/ticks"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_arm64.tar.gz"
      sha256 "a7bd501aef829ca54101e337716ca68abb693aa85359f42fde890597cff62eb2"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_amd64.tar.gz"
      sha256 "d93dd6ed393344e9e346b1d9468bdfdac5fc717ee02f85fb16ec170c3a962abe"

      def install
        bin.install "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_arm64.tar.gz"
      sha256 "e5a200c4635e5c64fa1cd6ed2f9e30db369b17e4d7250dcfba40316bf14fc925"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_amd64.tar.gz"
      sha256 "8cfeab7bda737d3d894ed3beb464b5edb2b236911e479999a96df534f93c304e"

      def install
        bin.install "tk"
      end
    end
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk version")
  end
end
