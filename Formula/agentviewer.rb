# typed: false
# frozen_string_literal: true

class Agentviewer < Formula
  desc "CLI tool for AI agents to display rich content in a browser"
  homepage "https://github.com/pengelbrecht/agentviewer"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      sha256 "48bd5b4ccba29450c705a8bb0c5f224dbbdb290d8d9beb791966b565de11a3dd"

      def install
        bin.install "agentviewer-darwin-arm64" => "agentviewer"
      end
    else
      sha256 "c763e890551cee16044c6710e1ac6901f4c151c81f7b4ade6eed65c68cae506b"

      def install
        bin.install "agentviewer-darwin-amd64" => "agentviewer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      sha256 "4284feeb159605aa7265f27695376af7e3240b081d57427b66cad1810958c29f"

      def install
        bin.install "agentviewer-linux-arm64" => "agentviewer"
      end
    else
      sha256 "8f2e43a9333b84cc922a240d15bf534883815d73658f781aeccb69a44a57a43d"

      def install
        bin.install "agentviewer-linux-amd64" => "agentviewer"
      end
    end
  end

  test do
    assert_match "agentviewer version", shell_output("#{bin}/agentviewer --version")
  end
end
