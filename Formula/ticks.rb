# typed: false
# frozen_string_literal: true

class Ticks < Formula
  desc "Multiplayer-first issue tracker for AI coding agents"
  homepage "https://github.com/pengelbrecht/ticks"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_arm64.tar.gz"
      sha256 "750feab9291e93d39c22c4a985822b55a75cca10f442bfc56faf52864a7783b9"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_darwin_amd64.tar.gz"
      sha256 "0b115f8de367f90181a41cc7254ee5cf19f1ffcdabf87934b5273daab039c8d5"

      def install
        bin.install "tk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_arm64.tar.gz"
      sha256 "9a9710861d8c26d1de61198a14aca9d271a6e750a5a3afd3386df7639e503a1b"

      def install
        bin.install "tk"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/tk_#{version}_linux_amd64.tar.gz"
      sha256 "ce96bb98fc81d9b4ffb76cb8fb65cb96313be2c6cc3f8299a90402ae9a1f4ca2"

      def install
        bin.install "tk"
      end
    end
  end

  test do
    assert_match "tk", shell_output("#{bin}/tk version")
  end
end
