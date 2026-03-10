class Suvadu < Formula
  desc "Total recall for your terminal."
  homepage "https://www.appachi.tech/suvadu/"
  version "0.1.1"
  url "https://downloads.appachi.tech/macos/archive/suv-macos-v0.1.1.tar.gz"
  sha256 "978c549b7f3a7bf11a8919f187a950dddadb6d78b2f666d52c3c00c72e4537e2"

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
