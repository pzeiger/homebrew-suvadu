class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.3.2"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.3.2.tar.gz"
  sha256 "8a68e81957c896d332560f276f5a162ed6aed72c609a0113d654312e6eed5d3e"

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
