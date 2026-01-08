# typed: false
# frozen_string_literal: true

class Agentviewer < Formula
  desc "CLI tool for AI agents to display rich content in a browser"
  homepage "https://github.com/pengelbrecht/agentviewer"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/agentviewer/releases/download/v#{version}/agentviewer-darwin-arm64"
      sha256 "7ac095f528eb68146b1eb5a20aaaf1d9f67044468305fad288dd781e965bda71"

      def install
        bin.install "agentviewer-darwin-arm64" => "agentviewer"
      end
    else
      url "https://github.com/pengelbrecht/agentviewer/releases/download/v#{version}/agentviewer-darwin-amd64"
      sha256 "d74715fef813beb2ae6b49f80c3460969934714bf6a79050f4729dfa03e0e06f"

      def install
        bin.install "agentviewer-darwin-amd64" => "agentviewer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/agentviewer/releases/download/v#{version}/agentviewer-linux-arm64"
      sha256 "d99a4c3141fb10ac5362eb22e1168789e310a01b90ddf8d4840c3a0f3c48f052"

      def install
        bin.install "agentviewer-linux-arm64" => "agentviewer"
      end
    else
      url "https://github.com/pengelbrecht/agentviewer/releases/download/v#{version}/agentviewer-linux-amd64"
      sha256 "5a99d2021f9a84efa162d1f93c834005f6886a85d6fe1668d5853b9653e92c4f"

      def install
        bin.install "agentviewer-linux-amd64" => "agentviewer"
      end
    end
  end

  test do
    assert_match "agentviewer version", shell_output("#{bin}/agentviewer --version")
  end
end
