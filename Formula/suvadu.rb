class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.1.0"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.1.0.tar.gz"
  sha256 "18ffdbb78cce51674affc38c7df264b3f4f6027d556ba26eb47416e9165b1550"

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
