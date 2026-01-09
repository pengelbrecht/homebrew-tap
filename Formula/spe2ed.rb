# typed: false
# frozen_string_literal: true

class Spe2ed < Formula
  desc "Fast E2E testing with natural language, powered by Claude and chromedp"
  homepage "https://github.com/pengelbrecht/spe2ed"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      sha256 "27f7c6749bde947ee5d87baf775fc0c2357458f26ed93520ed6bf9ee88aee9e2"

      def install
        bin.install "spe2ed"
      end
    else
      sha256 "52fa8b23aa8d835388c287e94cf569f006e63b20fce72a15357bdf404337ce56"

      def install
        bin.install "spe2ed"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      sha256 "bb3d119529bf6abd1213df79f13809e11d77e946c6524429c43353978a8b18a2"

      def install
        bin.install "spe2ed"
      end
    else
      sha256 "7f486873270fd548d1809ca65b9c7f4d4176429e3fa82f3e4d5333f212edd03b"

      def install
        bin.install "spe2ed"
      end
    end
  end

  test do
    assert_match "spe2ed", shell_output("#{bin}/spe2ed --version")
  end
end
