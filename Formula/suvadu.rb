class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.3.3"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.3.3.tar.gz"
  sha256 "784e0df80a00e562c05cb780e91332f0ae6436117c40c3bf13b3036d693ff90b"

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
