class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.2.1"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.2.1.tar.gz"
  sha256 "dbd1663bcb18ae353135b03ec17a3915d6d3a8514c5939c3fe213f73c5712a56"

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
