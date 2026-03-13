class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.1.2"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.1.2.tar.gz"
  sha256 "91108624fc17afdf9dc0fbed3b63a60a2bce9f78715b27598405949c6eed4d97"

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
