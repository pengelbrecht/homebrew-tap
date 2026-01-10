# typed: false
# frozen_string_literal: true

class Tk < Formula
  desc "Multiplayer-first issue tracker for AI coding agents"
  homepage "https://github.com/pengelbrecht/ticks"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_arm64.tar.gz"
      sha256 "9c5b0d19fca8b960125988128e4494fdbe46b4d334a7ca40efe659e375da91ef"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_amd64.tar.gz"
      sha256 "ddfcb4647880468ceefb0bc945532dbc0b4055470915b286d1d6418af7515625"

      def install
        bin.install "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_arm64.tar.gz"
      sha256 "b5dc74c41a6642a806d6e4ddc89f7932df584239b2b7fde4f2ea2b7b086475f5"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_amd64.tar.gz"
      sha256 "85d636b254de318f0a48951dac4a941b74d6e21cee5ee64f0dec2b631423b70e"

      def install
        bin.install "tk"
      end
    end
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk version")
  end
end
