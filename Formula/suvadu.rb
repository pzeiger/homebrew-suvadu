class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.3.4"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.3.4.tar.gz"
  sha256 "be2e54ee98cccbb9f010212a6e1bf542a866c794cb4fc9120990876d7a305f72"

  def install
    bin.install "suv"
    bin.install_symlink bin/"suv" => "suvadu"
    prefix.install "LICENSE"
  end

  def caveats
    <<~EOS
      To start recording history, add this to your .zshrc:
        eval "$(suv init zsh)"
    EOS
  end

  test do
    assert_match "suvadu", shell_output("#{bin}/suv --version")
  end
end
