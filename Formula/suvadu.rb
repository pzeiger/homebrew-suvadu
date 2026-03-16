class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.1.3"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.1.3.tar.gz"
  sha256 "2d4dd239696107d650e8c2ab77aff4932df353566b8ec31024f511290c9dd014"

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
