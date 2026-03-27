class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.2.0"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.2.0.tar.gz"
  sha256 "a48f75316e025c8413a6b4cff79e14ec0d2c9f6e4345dc2dba0747edca6861af"

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
