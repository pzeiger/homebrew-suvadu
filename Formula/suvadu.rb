class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.1.0"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.1.0.tar.gz"
  sha256 "bd2cca594cb82e8505a35977ab4e06896eb23fb8be77f41d2f7505e8d289eb26"

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
