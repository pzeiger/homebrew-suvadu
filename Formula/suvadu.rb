class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.3.1"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.3.1.tar.gz"
  sha256 "da6d50c05aa7b5d57eabd3f3515b71d01942af162c45191a64504824bd53a310"

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
