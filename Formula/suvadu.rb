class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.3.0"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.3.0.tar.gz"
  sha256 "4590cf740ea0156cdf017b4edad79095d8b86c94a908699c7a54eeb07e7ed872"

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
