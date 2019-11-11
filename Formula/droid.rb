class Droid < Formula
  version "v0.1.1"
  desc "A command-line tool for checking Android OS version history written by Rust."
  homepage "https://github.com/wasabeef/droid"

  bottle :unneeded

  if OS.mac?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-macos.tar.gz"
    sha256 "9a0c0fa8e87742ca6a1e575e0b0acb8be789978969fabf25df2c8c356f7ac6d4"
  elsif OS.linux?
    url "https://github.com/wasabeef/droid/releases/download/#{version}/droid-linux.tar.gz"
    sha256 "b46f61afeb0c7114404343bfe05ccb2593af6f1e26a6537851615197d8386cf4"
  enda

  def install
    bin.install "droid"
  end

  test do
    system "#{bin}/droid", "--version"
  end
end