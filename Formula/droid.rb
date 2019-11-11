class Droid < Formula
  version "v0.1.2"
  desc "A command-line tool for checking Android OS version history written by Rust."
  homepage "https://github.com/wasabeef/droid"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-macos.tar.gz"
    sha256 "3ad0ba1621d6bd180ff1585fc03b3cf70f57e270908be7ab7ea2bd8bf9949b05"
  elsif OS.linux?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-linux.tar.gz"
    sha256 "204784f7476bfae9cd48e403be7652e15a08baef4e6444dc7e01d5cd0e7f3495"
  end

  def install
    bin.install "droid"
  end

  test do
    system "#{bin}/droid", "--version"
  end
end
