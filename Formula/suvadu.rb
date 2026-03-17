class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.1.4"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.1.4.tar.gz"
  sha256 "2ca5394eae2cd8b21fb67b027558395c122abf5a0bb864304e084a9d02c5539a"

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
