class Droid < Formula
  version "v0.1.4"
  desc "A command-line tool for checking Android OS version history written by Rust."
  homepage "https://github.com/wasabeef/droid"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-macos.tar.gz"
    sha256 "1c5ef22cc5887faec6d4cb404ee8a7250a1acb33a540393a8b6294ada2dcaf2d"
  elsif OS.linux?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-linux.tar.gz"
    sha256 "d68b326cf56c384550812fdcdb687a55603f58139996bb1248819c15ff2681b3"
  end

  def install
    bin.install "droid"
  end

  test do
    system "#{bin}/droid", "--version"
  end
end
