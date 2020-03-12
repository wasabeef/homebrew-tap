class Droid < Formula
  version "v0.1.5"
  desc "A command-line tool for checking Android OS version history written by Rust."
  homepage "https://github.com/wasabeef/droid"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-macos.tar.gz"
    sha256 "0562b4e3d6f46c8758ca0899894bab9e7713d8d39ca1145674c0e2be2b3904bb"
  elsif OS.linux?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-linux.tar.gz"
    sha256 "545d3fa9627a991727d0d438721012225a58fe4b369ad060c170722f542633b8"
  end

  def install
    bin.install "droid"
  end

  test do
    system "#{bin}/droid", "--version"
  end
end
