# typed: false
# frozen_string_literal: true

class Spe2ed < Formula
  desc "Browser E2E testing with natural language or structured YAML, powered by Claude"
  homepage "https://github.com/pengelbrecht/spe2ed"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/spe2ed_#{version}_darwin_arm64.tar.gz"
      sha256 "55203f7049cdebaa83260b0d512d4b8879088e44dd0d15b337b931c090ae4381"

      def install
        bin.install "spe2ed"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/spe2ed_#{version}_darwin_amd64.tar.gz"
      sha256 "7d167e4bf2cdf35b1436287eb5cbab76a1b973301b6eda1c42fd0df31525ac97"

      def install
        bin.install "spe2ed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/spe2ed_#{version}_linux_arm64.tar.gz"
      sha256 "d108288e113b3b303f71453d0736757c9f9fd3218ad21066c37d8f6d35008554"

      def install
        bin.install "spe2ed"
      end
    else
      url "https://github.com/pengelbrecht/homebrew-tap/releases/download/v#{version}/spe2ed_#{version}_linux_amd64.tar.gz"
      sha256 "f8d4e1f44758fe7307c2809153be18d8a4f9bffae14ac080b07f7710a3022805"

      def install
        bin.install "spe2ed"
      end
    end
  end

  test do
    assert_match "spe2ed", shell_output("#{bin}/spe2ed --version")
  end
end
